<?php

namespace KJ\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * BPercentage
 *
 * @ORM\Table(name="b_percentage")
 * @ORM\Entity
 */
class BPercentage
{
    /**
     * @var integer
     *
     * @ORM\Column(name="per_id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $perId;

    /**
     * @var integer
     *
     * @ORM\Column(name="percentage", type="integer", nullable=false)
     */
    private $percentage;

    /**
     * @var \KJ\Entity\BJobcategory
     *
     * @ORM\ManyToOne(targetEntity="KJ\Entity\BJobcategory")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="jcat_id", referencedColumnName="jcat_id")
     * })
     */
    private $jcat;

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
     * Get perId
     *
     * @return integer 
     */
    public function getPerId()
    {
        return $this->perId;
    }

    /**
     * Set percentage
     *
     * @param integer $percentage
     * @return BPercentage
     */
    public function setPercentage($percentage)
    {
        $this->percentage = $percentage;
    
        return $this;
    }

    /**
     * Get percentage
     *
     * @return integer 
     */
    public function getPercentage()
    {
        return $this->percentage;
    }

    /**
     * Set jcat
     *
     * @param \KJ\Entity\BJobcategory $jcat
     * @return BPercentage
     */
    public function setJcat(\KJ\Entity\BJobcategory $jcat = null)
    {
        $this->jcat = $jcat;
    
        return $this;
    }

    /**
     * Get jcat
     *
     * @return \KJ\Entity\BJobcategory 
     */
    public function getJcat()
    {
        return $this->jcat;
    }

    /**
     * Set sub
     *
     * @param \KJ\Entity\BSubject $sub
     * @return BPercentage
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