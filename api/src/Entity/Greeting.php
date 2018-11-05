<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\ORM\Mapping as ORM;
use Ds\Component\Model\Attribute\Accessor\Slug;
use Ds\Component\Model\Attribute\Accessor\Uuid;
use Ds\Component\Model\Type\Sluggable;
use Ds\Component\Model\Type\Uuidentifiable;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * This is a dummy entity. Remove it!
 *
 * @ApiResource
 * @ORM\Entity
 */
class Greeting implements Sluggable, Uuidentifiable
{
    use Slug;
    use Uuid;

    /**
     * @var int The entity Id
     *
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @var string A nice person
     *
     * @ORM\Column
     * @Assert\NotBlank
     */
    public $name;

    /**
     * @var string A nice person
     *
     * @ORM\Column
     * @Assert\NotBlank
     */
    public $slug;

    /**
     * @var string A nice person
     *
     * @ORM\Column(name="uuid", type="guid", unique=true, nullable=true)
     */
    public $uuid;

    public function getId(): int
    {
        return $this->id;
    }
}
