<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Form\ContactType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;

class ContactController extends AbstractController
{
    /**
     * @Route("/contact", name="contact")
     */
    public function index(Request $request, MailerInterface $mailer): Response
    {

        $form = $this->createForm(ContactType::class);

        $form->handleRequest($request);

        $this->addFlash('info', 'Some useful info');

            if ($form->isSubmitted() && $form->isValid()) {

                $contactFormData = $form->getData();

                $email = (new Email())
                    ->from($this->getParameter('mailer_from'))
                    ->to('your_email@example.com')
                    ->subject('Vous avez un nouveau message')
                    ->html($this->renderView('contact/email.html.twig', [
                        'name' => $contactFormData["name"],
                        'email' => $contactFormData["email"],
                        'message' => $contactFormData["message"]
                    ]));



                $mailer->send($email);


                $this->addFlash('success', 'It sent!');

           return $this->redirectToRoute('contact');

            }

        return $this->render('contact/index.html.twig', [
        'form' => $form->createView(),
        ]);
    }
}
