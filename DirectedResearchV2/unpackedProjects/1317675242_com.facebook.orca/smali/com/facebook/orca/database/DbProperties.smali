.class public Lcom/facebook/orca/database/DbProperties;
.super Ljava/lang/Object;
.source "DbProperties.java"


# static fields
.field public static final a:Lcom/facebook/orca/database/DbThreadPropertyKey;

.field public static final b:Lcom/facebook/orca/database/DbThreadPropertyKey;

.field public static final c:Lcom/facebook/orca/database/DbThreadPropertyKey;

.field public static final d:Lcom/facebook/orca/database/DbThreadPropertyKey;

.field public static final e:Lcom/facebook/orca/database/DbUserPropertyKey;

.field public static final f:Lcom/facebook/orca/database/DbUserPropertyKey;

.field public static final g:Lcom/facebook/orca/database/DbUserPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/facebook/orca/database/DbThreadPropertyKey;

    const-string v1, "/sync/last_get_threads_client_time_ms"

    invoke-direct {v0, v1}, Lcom/facebook/orca/database/DbThreadPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/database/DbProperties;->a:Lcom/facebook/orca/database/DbThreadPropertyKey;

    .line 14
    new-instance v0, Lcom/facebook/orca/database/DbThreadPropertyKey;

    const-string v1, "/sync/last_get_threads_action_id"

    invoke-direct {v0, v1}, Lcom/facebook/orca/database/DbThreadPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/database/DbProperties;->b:Lcom/facebook/orca/database/DbThreadPropertyKey;

    .line 16
    new-instance v0, Lcom/facebook/orca/database/DbThreadPropertyKey;

    const-string v1, "/sync/threads_table_out_of_date"

    invoke-direct {v0, v1}, Lcom/facebook/orca/database/DbThreadPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/database/DbProperties;->c:Lcom/facebook/orca/database/DbThreadPropertyKey;

    .line 18
    new-instance v0, Lcom/facebook/orca/database/DbThreadPropertyKey;

    const-string v1, "/sync/last_thread_fetch_action_id/"

    invoke-direct {v0, v1}, Lcom/facebook/orca/database/DbThreadPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/database/DbProperties;->d:Lcom/facebook/orca/database/DbThreadPropertyKey;

    .line 25
    new-instance v0, Lcom/facebook/orca/database/DbUserPropertyKey;

    const-string v1, "/sync/last_sync_client_time_ms"

    invoke-direct {v0, v1}, Lcom/facebook/orca/database/DbUserPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/database/DbProperties;->e:Lcom/facebook/orca/database/DbUserPropertyKey;

    .line 27
    new-instance v0, Lcom/facebook/orca/database/DbUserPropertyKey;

    const-string v1, "/sync/last_get_friends_client_time_ms"

    invoke-direct {v0, v1}, Lcom/facebook/orca/database/DbUserPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/database/DbProperties;->f:Lcom/facebook/orca/database/DbUserPropertyKey;

    .line 29
    new-instance v0, Lcom/facebook/orca/database/DbUserPropertyKey;

    const-string v1, "/sync/last_merged_contacts_client_time_ms"

    invoke-direct {v0, v1}, Lcom/facebook/orca/database/DbUserPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/database/DbProperties;->g:Lcom/facebook/orca/database/DbUserPropertyKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/facebook/orca/database/DbThreadPropertyKey;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/facebook/orca/database/DbProperties;->d:Lcom/facebook/orca/database/DbThreadPropertyKey;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/database/DbThreadPropertyKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/database/DbThreadPropertyKey;

    return-object p0
.end method