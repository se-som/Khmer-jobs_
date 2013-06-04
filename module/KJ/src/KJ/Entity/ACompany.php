<?php

namespace KJ\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ACompany
 *
 * @ORM\Table(name="a_company")
 * @ORM\Entity
 */
class ACompany
{
    /**
     * @var integer
     *
     * @ORM\Column(name="com_id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $comId;

    /**
     * @var integer
     *
     * @ORM\Column(name="user_id", type="integer", nullable=true)
     */
    private $userId;

    /**
     * @var boolean
     *
     * @ORM\Column(name="approve", type="boolean", nullable=false)
     */
    private $approve;

    /**
     * @var string
     *
     * @ORM\Column(name="com_name", type="string", length=1000, nullable=false)
     */
    private $comName;

    /**
     * @var string
     *
     * @ORM\Column(name="com_location", type="string", length=1000, nullable=false)
     */
    private $comLocation;

    /**
     * @var string
     *
     * @ORM\Column(name="com_phone", type="string", length=15, nullable=false)
     */
    private $comPhone;

    /**
     * @var string
     *
     * @ORM\Column(name="com_email", type="string", length=1000, nullable=false)
     */
    private $comEmail;

    /**
     * @var string
     *
     * @ORM\Column(name="com_web", type="string", length=1000, nullable=false)
     */
    private $comWeb;



    /**
     * Get comId
     *
     * @return integer 
     */
    public function getComId()
    {
        return $this->comId;
    }

    /**
     * Set userId
     *
     * @param integer $userId
     * @return ACompany
     */
    public function setUserId($userId)
    {
        $this->userId = $userId;
    
        return $this;
    }

    /**
     * Get userId
     *
     * @return integer 
     */
    public function getUserId()
    {
        return $this->userId;
    }

    /**
     * Set approve
     *
     * @param boolean $approve
     * @return ACompany
     */
    public function setApprove($approve)
    {
        $this->approve = $approve;
    
        return $this;
    }

    /**
     * Get approve
     *
     * @return boolean 
     */
    public function getApprove()
    {
        return $this->approve;
    }

    /**
     * Set comName
     *
     * @param string $comName
     * @return ACompany
     */
    public function setComName($comName)
    {
        $this->comName = $comName;
    
        return $this;
    }

    /**
     * Get comName
     *
     * @return string 
     */
    public function getComName()
    {
        return $this->comName;
    }

    /**
     * Set comLocation
     *
     * @param string $comLocation
     * @return ACompany
     */
    public function setComLocation($comLocation)
    {
        $this->comLocation = $comLocation;
    
        return $this;
    }

    /**
     * Get comLocation
     *
     * @return string 
     */
    public function getComLocation()
    {
        return $this->comLocation;
    }

    /**
     * Set comPhone
     *
     * @param string $comPhone
     * @return ACompany
     */
    public function setComPhone($comPhone)
    {
        $this->comPhone = $comPhone;
    
        return $this;
    }

    /**
     * Get comPhone
     *
     * @return string 
     */
    public function getComPhone()
    {
        return $this->comPhone;
    }

    /**
     * Set comEmail
     *
     * @param string $comEmail
     * @return ACompany
     */
    public function setComEmail($comEmail)
    {
        $this->comEmail = $comEmail;
    
        return $this;
    }

    /**
     * Get comEmail
     *
     * @return string 
     */
    public function getComEmail()
    {
        return $this->comEmail;
    }

    /**
     * Set comWeb
     *
     * @param string $comWeb
     * @return ACompany
     */
    public function setComWeb($comWeb)
    {
        $this->comWeb = $comWeb;
    
        return $this;
    }

    /**
     * Get comWeb
     *
     * @return string 
     */
    public function getComWeb()
    {
        return $this->comWeb;
    }
}