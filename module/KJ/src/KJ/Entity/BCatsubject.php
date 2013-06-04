<?php

namespace KJ\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * BCatsubject
 *
 * @ORM\Table(name="b_catsubject")
 * @ORM\Entity
 */
class BCatsubject
{
    /**
     * @var integer
     *
     * @ORM\Column(name="csub_id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $csubId;

    /**
     * @var \KJ\Entity\BCategory
     *
     * @ORM\ManyToOne(targetEntity="KJ\Entity\BCategory")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="cat_id", referencedColumnName="cat_id")
     * })
     */
    private $cat;

    /**
     * @var \KJ\Entity\BSubject
     *
     * @ORM\ManyToOne(targetEntity="KJ\Entity\BSubject")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="sub_id", referencedColumnName="sub_id")
     * })
     */
    private $sub;



    /**
     * Get csubId
     *
     * @return integer 
     */
    public function getCsubId()
    {
        return $this->csubId;
    }

    /**
     * Set cat
     *
     * @param \KJ\Entity\BCategory $cat
     * @return BCatsubject
     */
    public function setCat(\KJ\Entity\BCategory $cat = null)
    {
        $this->cat = $cat;
    
        return $this;
    }

    /**
     * Get cat
     *
     * @return \KJ\Entity\BCategory 
     */
    public function getCat()
    {
        return $this->cat;
    }

    /**
     * Set sub
     *
     * @param \KJ\Entity\BSubject $sub
     * @return BCatsubject
     */
    public function setSub(\KJ\Entity\BSubject $sub = null)
    {
        $this->sub = $sub;
    
        return $this;
    }

    /**
     * Get sub
     *
     * @return \KJ\Entity\BSubject 
     */
    public function getSub()
    {
        return $this->sub;
    }
}