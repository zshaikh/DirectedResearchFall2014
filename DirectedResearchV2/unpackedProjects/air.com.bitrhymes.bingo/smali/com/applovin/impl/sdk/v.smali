.class Lcom/applovin/impl/sdk/v;
.super Ljava/lang/Object;


# static fields
.field public static final A:Lcom/applovin/impl/sdk/x;

.field public static final B:Lcom/applovin/impl/sdk/x;

.field public static final C:Lcom/applovin/impl/sdk/x;

.field public static final D:Lcom/applovin/impl/sdk/x;

.field public static final E:Lcom/applovin/impl/sdk/x;

.field public static final F:Lcom/applovin/impl/sdk/x;

.field public static final G:Lcom/applovin/impl/sdk/x;

.field public static final H:Lcom/applovin/impl/sdk/x;

.field public static final I:Lcom/applovin/impl/sdk/x;

.field public static final J:Lcom/applovin/impl/sdk/x;

.field public static final K:Lcom/applovin/impl/sdk/x;

.field public static final L:Lcom/applovin/impl/sdk/x;

.field public static final M:Lcom/applovin/impl/sdk/x;

.field public static final N:Lcom/applovin/impl/sdk/x;

.field public static final O:Lcom/applovin/impl/sdk/x;

.field public static final P:Lcom/applovin/impl/sdk/x;

.field public static final Q:Lcom/applovin/impl/sdk/x;

.field public static final R:Lcom/applovin/impl/sdk/x;

.field public static final S:Lcom/applovin/impl/sdk/x;

.field public static final T:Lcom/applovin/impl/sdk/x;

.field private static final U:Ljava/util/List;

.field private static final V:Ljava/util/List;

.field public static final a:Lcom/applovin/impl/sdk/x;

.field public static final b:Lcom/applovin/impl/sdk/x;

.field public static final c:Lcom/applovin/impl/sdk/x;

.field public static final d:Lcom/applovin/impl/sdk/x;

.field public static final e:Lcom/applovin/impl/sdk/x;

.field public static final f:Lcom/applovin/impl/sdk/x;

.field public static final g:Lcom/applovin/impl/sdk/x;

.field public static final h:Lcom/applovin/impl/sdk/x;

.field public static final i:Lcom/applovin/impl/sdk/x;

.field public static final j:Lcom/applovin/impl/sdk/x;

.field public static final k:Lcom/applovin/impl/sdk/x;

.field public static final l:Lcom/applovin/impl/sdk/x;

.field public static final m:Lcom/applovin/impl/sdk/x;

.field public static final n:Lcom/applovin/impl/sdk/x;

.field public static final o:Lcom/applovin/impl/sdk/x;

.field public static final p:Lcom/applovin/impl/sdk/x;

.field public static final q:Lcom/applovin/impl/sdk/x;

.field public static final r:Lcom/applovin/impl/sdk/x;

.field public static final s:Lcom/applovin/impl/sdk/x;

.field public static final t:Lcom/applovin/impl/sdk/x;

.field public static final u:Lcom/applovin/impl/sdk/x;

.field public static final v:Lcom/applovin/impl/sdk/x;

.field public static final w:Lcom/applovin/impl/sdk/x;

.field public static final x:Lcom/applovin/impl/sdk/x;

.field public static final y:Lcom/applovin/impl/sdk/x;

.field public static final z:Lcom/applovin/impl/sdk/x;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x4e20

    const-wide/16 v6, 0x78

    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v4, ""

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    aput-object v1, v0, v5

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->U:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/v;->V:Ljava/util/List;

    const-string v0, "is_disabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->a:Lcom/applovin/impl/sdk/x;

    const-string v0, "should_load_user_settings"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->b:Lcom/applovin/impl/sdk/x;

    const-string v0, "device_id"

    const-string v1, ""

    invoke-static {v0, v4}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->c:Lcom/applovin/impl/sdk/x;

    const-string v0, "publisher_id"

    const-string v1, ""

    invoke-static {v0, v4}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->d:Lcom/applovin/impl/sdk/x;

    const-string v0, "app_id"

    const-string v1, ""

    invoke-static {v0, v4}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->e:Lcom/applovin/impl/sdk/x;

    const-string v0, "device_token"

    const-string v1, ""

    invoke-static {v0, v4}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->f:Lcom/applovin/impl/sdk/x;

    const-string v0, "init_retry_count"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->g:Lcom/applovin/impl/sdk/x;

    const-string v0, "submit_data_retry_count"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->h:Lcom/applovin/impl/sdk/x;

    const-string v0, "fetch_ad_retry_count"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->i:Lcom/applovin/impl/sdk/x;

    const-string v0, "conversion_retry_count"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->j:Lcom/applovin/impl/sdk/x;

    const-string v0, "track_click_retry_count"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->k:Lcom/applovin/impl/sdk/x;

    const-string v0, "is_verbose_logging"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->l:Lcom/applovin/impl/sdk/x;

    const-string v0, "api_endpoint"

    const-string v1, "http://d.applovin.com/"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->m:Lcom/applovin/impl/sdk/x;

    const-string v0, "adserver_endpoint"

    const-string v1, "http://a.applovin.com/"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->n:Lcom/applovin/impl/sdk/x;

    const-string v0, "next_device_init"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->o:Lcom/applovin/impl/sdk/x;

    const-string v0, "get_retry_dealy"

    const-wide/16 v1, 0x2710

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->p:Lcom/applovin/impl/sdk/x;

    const-string v0, "max_apps_to_send"

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->q:Lcom/applovin/impl/sdk/x;

    const-string v0, "is_app_list_shared"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->r:Lcom/applovin/impl/sdk/x;

    const-string v0, "next_app_list_update"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->s:Lcom/applovin/impl/sdk/x;

    const-string v0, "hash_algorithm"

    const-string v1, "SHA-1"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->t:Lcom/applovin/impl/sdk/x;

    const-string v0, "short_hash_size"

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->u:Lcom/applovin/impl/sdk/x;

    const-string v0, "http_connection_timeout"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->v:Lcom/applovin/impl/sdk/x;

    const-string v0, "http_socket_timeout"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->w:Lcom/applovin/impl/sdk/x;

    const-string v0, "error_save_count"

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->x:Lcom/applovin/impl/sdk/x;

    const-string v0, "is_app_icon_requested"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->y:Lcom/applovin/impl/sdk/x;

    const-string v0, "local_server_port"

    const/16 v1, 0x1be9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->z:Lcom/applovin/impl/sdk/x;

    const-string v0, "local_server_enabled"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->A:Lcom/applovin/impl/sdk/x;

    const-string v0, "ad_session_minutes"

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->B:Lcom/applovin/impl/sdk/x;

    const-string v0, "ad_request_parameters"

    const-string v1, ""

    invoke-static {v0, v4}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->C:Lcom/applovin/impl/sdk/x;

    const-string v0, "ad_refresh_enabled"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->D:Lcom/applovin/impl/sdk/x;

    const-string v0, "ad_refresh_seconds"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->E:Lcom/applovin/impl/sdk/x;

    const-string v0, "mrec_ad_refresh_enabled"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->F:Lcom/applovin/impl/sdk/x;

    const-string v0, "mrec_ad_refresh_seconds"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->G:Lcom/applovin/impl/sdk/x;

    const-string v0, "leader_ad_refresh_enabled"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->H:Lcom/applovin/impl/sdk/x;

    const-string v0, "leader_ad_refresh_seconds"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->I:Lcom/applovin/impl/sdk/x;

    const-string v0, "plugin_version"

    const-string v1, ""

    invoke-static {v0, v4}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->J:Lcom/applovin/impl/sdk/x;

    const-string v0, "ad_preload_enabled"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->K:Lcom/applovin/impl/sdk/x;

    const-string v0, "ad_resource_caching_enabled"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->L:Lcom/applovin/impl/sdk/x;

    const-string v0, "resource_cache_prefix"

    const-string v1, "http://pdn.applovin.com/,http://img.applovin.com/,http://d.applovin.com/"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->M:Lcom/applovin/impl/sdk/x;

    const-string v0, "ad_auto_preload_sizes"

    const-string v1, "BANNER,INTER"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->N:Lcom/applovin/impl/sdk/x;

    const-string v0, "auto_upload_events"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->O:Lcom/applovin/impl/sdk/x;

    const-string v0, "auto_upload_aggregate_time"

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->P:Lcom/applovin/impl/sdk/x;

    const-string v0, "session_expiration_time"

    const-wide/16 v1, 0x12c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->Q:Lcom/applovin/impl/sdk/x;

    const-string v0, "event_cache_size"

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->R:Lcom/applovin/impl/sdk/x;

    const-string v0, "force_back_button_enabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->S:Lcom/applovin/impl/sdk/x;

    const-string v0, "is_first_install"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/v;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/v;->T:Lcom/applovin/impl/sdk/x;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/x;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No default value specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/v;->U:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/applovin/impl/sdk/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/applovin/impl/sdk/x;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/applovin/impl/sdk/w;)V

    sget-object v1, Lcom/applovin/impl/sdk/v;->V:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static a()Ljava/util/Collection;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/v;->V:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static b()I
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/v;->V:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
