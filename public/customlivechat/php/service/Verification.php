<?php
class Verification extends Service { private $config; public function onRegister() { parent::onRegister(); $this->config = $this->get('config'); } public function verifyInstallation() { $sp5edb18 = $this->config->data['services']['verify']; $spe4c800 = $sp5edb18['code']; $sp552e31 = $sp5edb18['token']; return $this->verifyCodeToken($spe4c800, $sp552e31); } public function verifyCodeToken($spe4c800, $sp552e31) { if (is_array($spe4c800)) { return !empty($spe4c800[0]) && !empty($spe4c800[1]) && !empty($sp552e31) && sha1(md5($spe4c800[0] . $spe4c800[1])) == $sp552e31; } return !empty($spe4c800) && !empty($sp552e31) && sha1(md5($spe4c800)) == $sp552e31; } public function updateInstallation($spe4c800, $sp552e31) { $this->config->updateParameters(array('services' => array('verify' => array('code' => $spe4c800, 'token' => $sp552e31)))); } }