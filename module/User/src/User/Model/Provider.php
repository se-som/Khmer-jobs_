<?php
namespace User\Model;
class Provider{
    public $user_id;
    public $provider_id;
    public $provider;
    public function exchangeArray($data){
        $this->user_id=(isset($data['user_id']))?$data['user_id']:null;
        $this->provider_id=(isset($data['provider_id']))?$data['provider_id']:null;
        $this->provider=(isset($data['provider']))?$data['provider']:null;
    }
}
?>
