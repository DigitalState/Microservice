<?php

return [
    ApiPlatform\Core\Bridge\Symfony\Bundle\ApiPlatformBundle::class => ['all' => true],
    Doctrine\Bundle\DoctrineBundle\DoctrineBundle::class => ['all' => true],
    Doctrine\Bundle\DoctrineCacheBundle\DoctrineCacheBundle::class => ['all' => true],
    Ds\Component\Container\DsContainerBundle::class => ['all' => true],
    Ds\Component\Debug\DsDebugBundle::class => ['dev' => true],
    Ds\Component\Entity\DsEntityBundle::class => ['all' => true],
    Ds\Component\Health\DsHealthBundle::class => ['all' => true],
    Ds\Component\Log\DsLogBundle::class => ['all' => true],
    Ds\Component\Resolver\DsResolverBundle::class => ['all' => true],
    Ds\Component\Statistic\DsStatisticBundle::class => ['all' => true],
    Lexik\Bundle\JWTAuthenticationBundle\LexikJWTAuthenticationBundle::class => ['all' => true],
    Nelmio\CorsBundle\NelmioCorsBundle::class => ['all' => true],
    Sensio\Bundle\FrameworkExtraBundle\SensioFrameworkExtraBundle::class => ['all' => true],
    Symfony\Bundle\MonologBundle\MonologBundle::class => ['all' => true],
    Symfony\Bundle\FrameworkBundle\FrameworkBundle::class => ['all' => true],
    Symfony\Bundle\TwigBundle\TwigBundle::class => ['all' => true],
    Symfony\Bundle\SecurityBundle\SecurityBundle::class => ['all' => true],
    Symfony\Bundle\WebProfilerBundle\WebProfilerBundle::class => ['dev' => true, 'test' => true],
];