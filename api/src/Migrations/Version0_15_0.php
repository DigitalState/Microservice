<?php

namespace App\Migrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;
use Ds\Component\Acl\Migrations\Version0_15_0 as Acl;
use Ds\Component\Config\Migrations\Version0_15_0 as Config;
use Ds\Component\Metadata\Migrations\Version0_15_0 as Metadata;
use Ds\Component\Parameter\Migrations\Version0_15_0 as Parameter;
use Ds\Component\Tenant\Migrations\Version0_15_0 as Tenant;

/**
 * Class Version0_15_0
 */
final class Version0_15_0 extends AbstractMigration
{
    /**
     * Up migration
     *
     * @param \Doctrine\DBAL\Schema\Schema $schema
     */
    public function up(Schema $schema)
    {
        $acl = new Acl($this->version);
        $acl->up($schema);

        $config = new Config($this->version);
        $config->up($schema);

        $metadata = new Metadata($this->version);
        $metadata->up($schema);

        $parameter = new Parameter($this->version);
        $parameter->up($schema);

        $tenant = new Tenant($this->version);
        $tenant->up($schema);

        switch ($this->platform) {
            case 'postgresql':
                break;

            default:
                $this->abortIf(true,'Migration cannot be executed on "'.$this->platform.'".');
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
        $acl = new Acl($this->version);
        $acl->down($schema);

        $config = new Config($this->version);
        $config->down($schema);

        $metadata = new Metadata($this->version);
        $metadata->down($schema);

        $parameter = new Parameter($this->version);
        $parameter->down($schema);

        $tenant = new Tenant($this->version);
        $tenant->down($schema);

        switch ($this->platform) {
            case 'postgresql':
                break;

            default:
                $this->abortIf(true,'Migration cannot be executed on "'.$this->platform.'".');
                break;
        }
    }
}
