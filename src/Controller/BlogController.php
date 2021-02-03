<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\User;
use App\Repository\ArticleRepository;
use App\Form\SearchFormType;
use DateTime;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


class BlogController extends AbstractController
{
    /**
     * @Route("/blog", name="blog")
     */
    public function index(ArticleRepository $articleRepository): Response
    {

        $articles = $articleRepository->findAll();

        return $this->render('blog.html.twig', [
            'articles' => $articles,
        ]);
    }

//    /**
//     * @Route("/new", name="new", methods={"GET","POST"})
//     * @param Request $request
//     * @param Slugify $slugify
//     * @return Response
//     */
//    public function new(Request $request, Slugify $slugify): Response
//    {
//        $post = new Post();
//        $form = $this->createForm(PostType::class, $post);
//        $form->handleRequest($request);
//
//        if ($form->isSubmitted() && $form->isValid()) {
//            $entityManager = $this->getDoctrine()->getManager();
//
//            /**
//             * @var User $user
//             */
//            $user = $this->getUser();
//
//            if ($user !== null) {
//                $date = new DateTime('now');
//                $post->setDate($date);
//                $post->setAuthor($user);
//                $entityManager->persist($post);
//                $entityManager->flush();
//            }
//            return $this->redirectToRoute('admin_post_index');
//        }
//
//        return $this->render('admin/post/new.html.twig', [
//            'post' => $post,
//            'form' => $form->createView(),
//        ]);
//    }
//
//    /**
//     * @Route("/{slug}", name="show", methods={"GET"})
//     * @param Post $post
//     * @return Response
//     */
//    public function show(Post $post): Response
//    {
//        return $this->render('admin/post/show.html.twig', [
//            'post' => $post,
//        ]);
//    }
//
//    /**
//     * @Route("/{slug}/modification", name="edit", methods={"GET","POST"})
//     * @param Request $request
//     * @param Post $post
//     * @return Response
//     */
//    public function edit(Request $request, Post $post): Response
//    {
//        $form = $this->createForm(PostType::class, $post);
//        $form->handleRequest($request);
//
//        if ($form->isSubmitted() && $form->isValid()) {
//
//            $this->getDoctrine()->getManager()->flush();
//
//            return $this->render('admin/post/show.html.twig', [
//                'post' => $post,
//            ]);
//        }
//
//        return $this->render('admin/post/edit.html.twig', [
//            'post' => $post,
//            'form' => $form->createView(),
//        ]);
//    }
//
//    /**
//     * @Route("/{id}", name="delete", methods={"DELETE"})
//     * @param Request $request
//     * @param Post $post
//     * @return Response
//     */
//    public function delete(Request $request, Post $post): Response
//    {
//        if ($this->isCsrfTokenValid('delete' . $post->getId(), $request->request->get('_token'))) {
//            $entityManager = $this->getDoctrine()->getManager();
//            $entityManager->remove($post);
//            $entityManager->flush();
//        }
//
//        return $this->redirectToRoute('admin_post_index');
//    }
}
