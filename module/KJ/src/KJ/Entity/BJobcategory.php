<?php

namespace KJ\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * BJobcategory
 *
 * @ORM\Table(name="b_jobcategory")
 * @ORM\Entity
 */
class BJobcategory
{
    /**
     * @var integer
     *
     * @ORM\Column(name="jcat_id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $jcatId;

    /**
     * @var \KJ\Entity\ACompany
     *
     * @ORM\ManyToOne(targetEntity="KJ\Entity\ACompany")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="com_id", referencedColumnName="com_id")
     * })
     */
    private $com;

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
     * Get jcatId
     *
     * @return integer 
     */
    public function getJcatId()
    {
        return $this->jcatId;
    }

    /**
     * Set com
     *
     * @param \KJ\Entity\ACompany $com
     * @return BJobcategory
     */
    public function setCom(\KJ\Entity\ACompany $com = null)
    {
        $this->com = $com;
    
        return $this;
    }

    /**
     * Get com
     *
     * @return \KJ\Entity\ACompany 
     */
    public function getCom()
    {
        return $this->com;
    }

    /**
     * Set cat
     *
     * @param \KJ\Entity\BCategory $cat
     * @return BJobcategory
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
}