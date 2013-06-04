<?php

namespace KJ\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * BJob
 *
 * @ORM\Table(name="b_job")
 * @ORM\Entity
 */
class BJob
{
    /**
     * @var integer
     *
     * @ORM\Column(name="job_id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $jobId;

    /**
     * @var string
     *
     * @ORM\Column(name="job_title", type="string", length=255, nullable=true)
     */
    private $jobTitle;

    /**
     * @var string
     *
     * @ORM\Column(name="job_salary", type="string", length=100, nullable=true)
     */
    private $jobSalary;

    /**
     * @var string
     *
     * @ORM\Column(name="job_location", type="string", length=250, nullable=false)
     */
    private $jobLocation;

    /**
     * @var string
     *
     * @ORM\Column(name="job_deadline", type="string", length=250, nullable=false)
     */
    private $jobDeadline;

    /**
     * @var string
     *
     * @ORM\Column(name="job_benefit", type="string", length=250, nullable=true)
     */
    private $jobBenefit;

    /**
     * @var string
     *
     * @ORM\Column(name="job_description", type="text", nullable=true)
     */
    private $jobDescription;

    /**
     * @var string
     *
     * @ORM\Column(name="about_company", type="string", length=250, nullable=true)
     */
    private $aboutCompany;

    /**
     * @var string
     *
     * @ORM\Column(name="job_apply", type="string", length=250, nullable=false)
     */
    private $jobApply;

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
     * Get jobId
     *
     * @return integer 
     */
    public function getJobId()
    {
        return $this->jobId;
    }

    /**
     * Set jobTitle
     *
     * @param string $jobTitle
     * @return BJob
     */
    public function setJobTitle($jobTitle)
    {
        $this->jobTitle = $jobTitle;
    
        return $this;
    }

    /**
     * Get jobTitle
     *
     * @return string 
     */
    public function getJobTitle()
    {
        return $this->jobTitle;
    }

    /**
     * Set jobSalary
     *
     * @param string $jobSalary
     * @return BJob
     */
    public function setJobSalary($jobSalary)
    {
        $this->jobSalary = $jobSalary;
    
        return $this;
    }

    /**
     * Get jobSalary
     *
     * @return string 
     */
    public function getJobSalary()
    {
        return $this->jobSalary;
    }

    /**
     * Set jobLocation
     *
     * @param string $jobLocation
     * @return BJob
     */
    public function setJobLocation($jobLocation)
    {
        $this->jobLocation = $jobLocation;
    
        return $this;
    }

    /**
     * Get jobLocation
     *
     * @return string 
     */
    public function getJobLocation()
    {
        return $this->jobLocation;
    }

    /**
     * Set jobDeadline
     *
     * @param string $jobDeadline
     * @return BJob
     */
    public function setJobDeadline($jobDeadline)
    {
        $this->jobDeadline = $jobDeadline;
    
        return $this;
    }

    /**
     * Get jobDeadline
     *
     * @return string 
     */
    public function getJobDeadline()
    {
        return $this->jobDeadline;
    }

    /**
     * Set jobBenefit
     *
     * @param string $jobBenefit
     * @return BJob
     */
    public function setJobBenefit($jobBenefit)
    {
        $this->jobBenefit = $jobBenefit;
    
        return $this;
    }

    /**
     * Get jobBenefit
     *
     * @return string 
     */
    public function getJobBenefit()
    {
        return $this->jobBenefit;
    }

    /**
     * Set jobDescription
     *
     * @param string $jobDescription
     * @return BJob
     */
    public function setJobDescription($jobDescription)
    {
        $this->jobDescription = $jobDescription;
    
        return $this;
    }

    /**
     * Get jobDescription
     *
     * @return string 
     */
    public function getJobDescription()
    {
        return $this->jobDescription;
    }

    /**
     * Set aboutCompany
     *
     * @param string $aboutCompany
     * @return BJob
     */
    public function setAboutCompany($aboutCompany)
    {
        $this->aboutCompany = $aboutCompany;
    
        return $this;
    }

    /**
     * Get aboutCompany
     *
     * @return string 
     */
    public function getAboutCompany()
    {
        return $this->aboutCompany;
    }

    /**
     * Set jobApply
     *
     * @param string $jobApply
     * @return BJob
     */
    public function setJobApply($jobApply)
    {
        $this->jobApply = $jobApply;
    
        return $this;
    }

    /**
     * Get jobApply
     *
     * @return string 
     */
    public function getJobApply()
    {
        return $this->jobApply;
    }

    /**
     * Set jcat
     *
     * @param \KJ\Entity\BJobcategory $jcat
     * @return BJob
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
}