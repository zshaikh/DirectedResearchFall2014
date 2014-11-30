.class public Lcom/facebook/orca/prefs/PrefKeys;
.super Ljava/lang/Object;
.source "PrefKeys.java"


# static fields
.field public static final A:Lcom/facebook/orca/prefs/PrefKey;

.field public static final B:Lcom/facebook/orca/prefs/PrefKey;

.field public static final C:Lcom/facebook/orca/prefs/PrefKey;

.field public static final D:Lcom/facebook/orca/prefs/PrefKey;

.field public static final E:Lcom/facebook/orca/prefs/PrefKey;

.field public static final F:Lcom/facebook/orca/prefs/PrefKey;

.field public static final G:Lcom/facebook/orca/prefs/PrefKey;

.field public static final H:Lcom/facebook/orca/prefs/PrefKey;

.field public static final I:Lcom/facebook/orca/prefs/PrefKey;

.field public static final a:Lcom/facebook/orca/prefs/PrefKey;

.field public static final b:Lcom/facebook/orca/prefs/PrefKey;

.field public static final c:Lcom/facebook/orca/prefs/PrefKey;

.field public static final d:Lcom/facebook/orca/prefs/PrefKey;

.field public static final e:Lcom/facebook/orca/prefs/PrefKey;

.field public static final f:Lcom/facebook/orca/prefs/PrefKey;

.field public static final g:Lcom/facebook/orca/prefs/PrefKey;

.field public static final h:Lcom/facebook/orca/prefs/PrefKey;

.field public static final i:Lcom/facebook/orca/prefs/PrefKey;

.field public static final j:Lcom/facebook/orca/prefs/PrefKey;

.field public static final k:Lcom/facebook/orca/prefs/PrefKey;

.field public static final l:Lcom/facebook/orca/prefs/PrefKey;

.field public static final m:Lcom/facebook/orca/prefs/PrefKey;

.field public static final n:Lcom/facebook/orca/prefs/PrefKey;

.field public static final o:Lcom/facebook/orca/prefs/PrefKey;

.field public static final p:Lcom/facebook/orca/prefs/PrefKey;

.field public static final q:Lcom/facebook/orca/prefs/PrefKey;

.field public static final r:Lcom/facebook/orca/prefs/PrefKey;

.field public static final s:Lcom/facebook/orca/prefs/PrefKey;

.field public static final t:Lcom/facebook/orca/prefs/PrefKey;

.field public static final u:Lcom/facebook/orca/prefs/PrefKey;

.field public static final v:Lcom/facebook/orca/prefs/PrefKey;

.field public static final w:Lcom/facebook/orca/prefs/PrefKey;

.field public static final x:Lcom/facebook/orca/prefs/PrefKey;

.field public static final y:Lcom/facebook/orca/prefs/PrefKey;

.field public static final z:Lcom/facebook/orca/prefs/PrefKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    .line 16
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "auth/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    .line 17
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "fb_token"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->c:Lcom/facebook/orca/prefs/PrefKey;

    .line 18
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "fb_expires"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->d:Lcom/facebook/orca/prefs/PrefKey;

    .line 19
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "fb_me_user"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    .line 20
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "fb_logged_out"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    .line 22
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "orca/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    .line 24
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "me_user_version"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->h:Lcom/facebook/orca/prefs/PrefKey;

    .line 25
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "first_install_time"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->i:Lcom/facebook/orca/prefs/PrefKey;

    .line 27
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "phone_confirm/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->j:Lcom/facebook/orca/prefs/PrefKey;

    .line 28
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->j:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "skipped_phone_verification_time"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->k:Lcom/facebook/orca/prefs/PrefKey;

    .line 30
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->j:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "last_sent_confirmation_code_time"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->l:Lcom/facebook/orca/prefs/PrefKey;

    .line 32
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->j:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "last_sent_country_code"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->m:Lcom/facebook/orca/prefs/PrefKey;

    .line 34
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->j:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "last_sent_number"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->n:Lcom/facebook/orca/prefs/PrefKey;

    .line 39
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "preferences/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->o:Lcom/facebook/orca/prefs/PrefKey;

    .line 40
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->o:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "notifications/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->p:Lcom/facebook/orca/prefs/PrefKey;

    .line 42
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->p:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "muted_until2"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->q:Lcom/facebook/orca/prefs/PrefKey;

    .line 44
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->p:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "sound_enabled"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->r:Lcom/facebook/orca/prefs/PrefKey;

    .line 46
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->p:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "vibrate_enabled"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->s:Lcom/facebook/orca/prefs/PrefKey;

    .line 48
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->p:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "led_enabled"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->t:Lcom/facebook/orca/prefs/PrefKey;

    .line 50
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->p:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "ringtone_uri"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->u:Lcom/facebook/orca/prefs/PrefKey;

    .line 52
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->p:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "location_services"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->v:Lcom/facebook/orca/prefs/PrefKey;

    .line 55
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->o:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "threads/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->w:Lcom/facebook/orca/prefs/PrefKey;

    .line 58
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "app_info/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->x:Lcom/facebook/orca/prefs/PrefKey;

    .line 59
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->x:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "last_fetch_time_ms"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->y:Lcom/facebook/orca/prefs/PrefKey;

    .line 61
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->x:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "app_info_data"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->z:Lcom/facebook/orca/prefs/PrefKey;

    .line 65
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "/gk/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->A:Lcom/facebook/orca/prefs/PrefKey;

    .line 66
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->A:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "values/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->B:Lcom/facebook/orca/prefs/PrefKey;

    .line 67
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->A:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "last_fetch_time_ms"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->C:Lcom/facebook/orca/prefs/PrefKey;

    .line 71
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "internal/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->D:Lcom/facebook/orca/prefs/PrefKey;

    .line 72
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->D:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "logging_level"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->E:Lcom/facebook/orca/prefs/PrefKey;

    .line 75
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "version_promo_dismissed_version"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->F:Lcom/facebook/orca/prefs/PrefKey;

    .line 77
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "version_promo_dismissed_time"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->G:Lcom/facebook/orca/prefs/PrefKey;

    .line 80
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->p:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "threads/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->H:Lcom/facebook/orca/prefs/PrefKey;

    .line 83
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "ui_counters/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->I:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;
    .locals 2

    .prologue
    .line 87
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->H:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/prefs/PrefKey;

    const-string v0, "/muted_until2"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/prefs/PrefKey;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;
    .locals 2

    .prologue
    .line 92
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->w:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/prefs/PrefKey;

    const-string v0, "/share_location"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/prefs/PrefKey;

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;
    .locals 2

    .prologue
    .line 97
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->w:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/prefs/PrefKey;

    const-string v0, "/backside_tab"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/prefs/PrefKey;

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->B:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/prefs/PrefKey;

    return-object p0
.end method
