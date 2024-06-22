
create table if not exists files_documents(
    id              serial             not null,
    original_name   varchar(255)       not null,
    file_name       varchar(255)       not null,
    extension       varchar(255)       not null,
    f_language        varchar(255)       not null
);

create table if not exists products(
    id              serial             not null,
    p_name          varchar(255)       not null,
    data_added      int                not null,
    data_updated    int                not null,
    display         tinyint(1)         not null,
    category_id     int                not null,
    deleted         tinyint(1)         not null,
    foreign key (category_id) references category(id)
);
create table if not exists products_files(
    id              serial             not null,
    product_id      int                not null,
    files_id         int                not null,
    position        int                not null,
    foreign key (product_id) references products(id),
    foreign key (files_id) references files(id)
);

create table if not exists products_categories(
    id              serial             not null,
    display         tinyint(1)         not null,
    p_name          varchar(255)       not null,
    parent_id       int                not null,
    scope           tinyint(1)         not null,
    lvl             int                not null,
    lft            int                not null,
    rgt             int                not null,
    position        int                not null
);

create table if not exists files_videos(
    id              serial             not null,
    original_name   varchar(255)       not null,
    file_name       varchar(255)       not null,
    extension       varchar(255)       not null
);

create table if not exists products_videos(
    id              serial             not null,
    video_id        int                not null,
    products_id      int                not null,
    source_id       SMALLINT           not null,
    url_code        varchar(200)       not null,
    foreign key (video_id) references video(id),
    foreign key (product_id) references products(id)
);

create table if not exists files_images(
    id              serial             not null,
    original_name   varchar(255)       not null,
    files_name       varchar(255)       not null,
    extension       varchar(255)       not null
);

create table if not exists products_images(
    id              serial             not null,    
    images_id        int                not null,
    products_id      int                not null,
    position        int                not null,
    foreign key (images_id) references images(id),
    foreign key (products_id) references products(id)
);

create table if not exists articles(
    id              serial             not null,
    data_added      int                not null,
    data_updated    int                not null,
    type_id         int                not null
);

create table if not exists articles_files(
    id              serial             not null,
    articles_id     int                not null,
    files_id        int                not null,
    position        int                not null,
    foreign key (articles_id) references articles(id),
    foreign key (files_id) references files(id)
);

create table if not exists articles_images(
    id              serial             not null,
    articles_id      int                not null,
    images_id        int               not null,
    position        int                not null,
    foreign key (articles_id) references articles(id),
    foreign key (images_id) references images(id)
);

create table if not exists articles_videos(
    id              serial             not null,
    articles_id     int                 not null,
    videos_id        int               not null,
    url_code         varchar(200)      not null
    foreign key (articles_id) references articles(id),
    foreign key (videos_id) references videos(id)
);





