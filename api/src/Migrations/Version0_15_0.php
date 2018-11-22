<?php

namespace App\Migrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;
use Doctrine\DBAL\Migrations\Version;
use Ds\Component\Acl\Migrations\Version0_15_0 as Acl;
use Ds\Component\Config\Migrations\Version0_15_0 as Config;
use Ds\Component\Container\Attribute;
use Ds\Component\Database\Util\Objects;
use Ds\Component\Database\Util\Parameters;
use Ds\Component\Metadata\Migrations\Version0_15_0 as Metadata;
use Ds\Component\Parameter\Migrations\Version0_15_0 as Parameter;
use Ds\Component\Tenant\Migrations\Version0_15_0 as Tenant;
use Symfony\Component\DependencyInjection\ContainerAwareInterface;

/**
 * Class Version0_15_0
 */
final class Version0_15_0 extends AbstractMigration implements ContainerAwareInterface
{
    use Attribute\Container;

    /**
     * @cont string
     */
    const DIRECTORY = '/srv/api/config/migrations/0_15_0/';

    /**
     * @var \Ds\Component\Acl\Migrations\Version0_15_0
     */
    private $acl;

    /**
     * @var \Ds\Component\Config\Migrations\Version0_15_0
     */
    private $config;

    /**
     * @var \Ds\Component\Metadata\Migrations\Version0_15_0
     */
    private $metadata;

    /**
     * @var \Ds\Component\Parameter\Migrations\Version0_15_0
     */
    private $parameter;

    /**
     * @var \Ds\Component\Tenant\Migrations\Version0_15_0
     */
    private $tenant;

    /**
     * Constructor
     *
     * @param \Doctrine\DBAL\Migrations\Version  $version
     */
    public function __construct(Version $version)
    {
        parent::__construct($version);
        $this->acl = new Acl($version);
        $this->config = new Config($version);
        $this->metadata = new Metadata($version);
        $this->parameter = new Parameter($version);
        $this->tenant = new Tenant($version);
    }

    /**
     * Up migration
     *
     * @param \Doctrine\DBAL\Schema\Schema $schema
     */
    public function up(Schema $schema)
    {
        $parameters = Parameters::parseFile(static::DIRECTORY.'parameters.yml');
        $this->acl->up($schema, Objects::parseFile(static::DIRECTORY.'acl.yml', $parameters));
        $this->config->setContainer($this->container)->up($schema, Objects::parseFile(static::DIRECTORY.'config.yml', $parameters));
        $this->metadata->up($schema, Objects::parseFile(static::DIRECTORY.'metadata.yml', $parameters));
        $this->parameter->setContainer($this->container)->up($schema, Objects::parseFile(static::DIRECTORY.'parameter.yml', $parameters));
        $this->tenant->up($schema, Objects::parseFile(static::DIRECTORY.'tenant.yml', $parameters));

        switch ($this->platform->getName()) {
            case 'postgresql':
                break;

            default:
                $this->abortIf(true,'Migration cannot be executed on "'.$this->platform->getName().'".');
                break;
        }
    }

    /**
     * Down migration
     *
     * @param \Doctrine\DBAL\Schema\Schema $schema
     */
    public function down(Schema $schema)
    {
        $this->acl->down($schema);
        $this->config->setContainer($this->container)->down($schema);
        $this->metadata->down($schema);
        $this->parameter->setContainer($this->container)->down($schema);
        $this->tenant->down($schema);

        switch ($this->platform->getName()) {
            case 'postgresql':
                break;

            default:
                $this->abortIf(true,'Migration cannot be executed on "'.$this->platform->getName().'".');
                break;
        }
    }
}
