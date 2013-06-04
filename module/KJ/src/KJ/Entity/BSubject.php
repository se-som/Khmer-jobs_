<?php

namespace KJ\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * BSubject
 *
 * @ORM\Table(name="b_subject")
 * @ORM\Entity
 */
class BSubject
{
    /**
     * @var integer
     *
     * @ORM\Column(name="sub_id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $subId;

    /**
     * @var string
     *
     * @ORM\Column(name="sub_name", type="string", length=255, nullable=true)
     */
    private $subName;



    /**
     * Get subId
     *
     * @return integer 
     */
    public function getSubId()
    {
        return $this->subId;
    }

    /**
     * Set subName
     *
     * @param string $subName
     * @return BSubject
     */
    public function setSubName($subName)
    {
        $this->subName = $subName;
    
        return $this;
    }

    /**
     * Get subName
     *
     * @return string 
     */
    public function getSubName()
    {
        return $this->subName;
    }
}