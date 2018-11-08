<?php

namespace App\Fixtures\System;

use Doctrine\Common\DataFixtures\OrderedFixtureInterface;
use Ds\Component\Parameter\Fixture\ParameterFixture;

/**
 * Class Parameters
 */
class Parameters extends ParameterFixture implements OrderedFixtureInterface
{
    /**
     * {@inheritdoc}
     */
    public function getOrder()
    {
        return 0;
    }

    /**
     * {@inheritdoc}
     */
    protected function getResource()
    {
        return '/srv/api/config/fixtures/{env}/system/parameters.yaml';
    }
}
