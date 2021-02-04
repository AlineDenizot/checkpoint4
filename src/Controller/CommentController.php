<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Comment;
use App\Entity\User;
use App\Form\CommentType;
use App\Repository\CommentRepository;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/comment")
 */
class CommentController extends AbstractController
{
    /**
     * @Route("/", name="comment_index", methods={"GET"})
     */
    public function index(CommentRepository $commentRepository): Response
    {
        return $this->render('comment/index.html.twig', [
            'comments' => $commentRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new/{articleSlug}", name="comment_new", methods={"GET","POST"})
     * @ParamConverter("article", class="App\Entity\Article", options={"mapping": {"articleSlug": "slug"}})
     */
    public function new(Request $request, Article $article): Response
    {
        $comment = new Comment();
        $form = $this->createForm(CommentType::class, $comment);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();

            /** @var User $user */
            $user = $this->getUser();

            $date = new \DateTime('now');
            $comment->setDate($date);
            $comment->setAuthor($user);
            $comment->setArticle($article);

            $entityManager->persist($comment);
            $entityManager->flush();

            return $this->redirectToRoute('article_show', ['slug' => $article->getSlug()]);
        }

        return $this->render('comment/new.html.twig', [
            'comment' => $comment,
            'article' => $article,
            'form' => $form->createView(),
        ]);
    }

}
