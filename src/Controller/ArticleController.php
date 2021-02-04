<?php

namespace App\Controller;

use App\Entity\Article;
use App\Form\ArticleType;
use App\Repository\ArticleRepository;
use App\Service\Slugify;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/article")
 */
class ArticleController extends AbstractController
{
    /**
     * @Route("/blog", name="blog")
     */
    public function index(ArticleRepository $articleRepository): Response
    {

        $articles = $articleRepository->findAll();

        return $this->render('blog/index.html.twig', [
            'articles' => $articles,
        ]);
    }

    /**
     * @Route("/blog/{section}", name="blog_section")
     */
    public function section(ArticleRepository $articleRepository, $section): Response
    {

        $articles = $articleRepository->findBy(
            ['section'=>$section]
        );

        return $this->render('blog/allPost.html.twig', [
            'articles' => $articles,
            'section' => $section
        ]);
    }

    /**
     * @Route("/{slug}", name="article_show", methods={"GET"})
     * @ParamConverter("article", class="App\Entity\Article", options={"mapping":{"slug" : "slug"}})
     */
    public function show(Article $article, Slugify $slugify): Response
    {
        return $this->render('article/show.html.twig', [
            'article' => $article,
        ]);
    }


}
