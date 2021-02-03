<?php

namespace App\Entity;

use App\Repository\CommentRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=CommentRepository::class)
 */
class Comment
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     * @var integer
     */
    private $id;

    /**
     * @ORM\Column(type="text")
     * @var string
     */
    private $description;

    /**
     * @ORM\Column(type="datetime")
     * @ORM\JoinColumn(nullable=false)
     * @var \DateTimeInterface|null
     */
    private $date;

    /**
     * @ORM\ManyToOne(targetEntity=Article::class, inversedBy="comments", cascade={"persist"})
     * @ORM\JoinColumn(nullable=false)
     * @var Article|null
     */
    private $article;

    /**
     * @ORM\ManyToOne(targetEntity=User::class, inversedBy="comments", cascade={"persist"})
     * @ORM\JoinColumn(nullable=false)
     * @var User|null
     */
    private $author;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getDate(): ?\DateTimeInterface
    {
        return $this->date;
    }

    public function setDate(?\DateTimeInterface $date): self
    {
        $this->date = $date;

        return $this;
    }

    public function getArticle(): ?Article
    {
        return $this->article;
    }

    public function setArticle(?Article $article): self
    {
        $this->article = $article;

        return $this;
    }

    public function getAuthor(): ?User
    {
        return $this->author;
    }

    public function setAuthor(?User $author): self
    {
        $this->author = $author;

        return $this;
    }
}