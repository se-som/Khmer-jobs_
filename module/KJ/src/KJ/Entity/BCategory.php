<?php

namespace KJ\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * BCategory
 *
 * @ORM\Table(name="b_category")
 * @ORM\Entity
 */
class BCategory
{
    /**
     * @var integer
     *
     * @ORM\Column(name="cat_id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $catId;

    /**
     * @var string
     *
     * @ORM\Column(name="cat_name", type="string", length=255, nullable=true)
     */
    private $catName;



    /**
     * Get catId
     *
     * @return integer 
     */
    public function getCatId()
    {
        return $this->catId;
    }

    /**
     * Set catName
     *
     * @param string $catName
     * @return BCategory
     */
    public function setCatName($catName)
    {
        $this->catName = $catName;
    
        return $this;
    }

    /**
     * Get catName
     *
     * @return string 
     */
    public function getCatName()
    {
        return $this->catName;
    }
}