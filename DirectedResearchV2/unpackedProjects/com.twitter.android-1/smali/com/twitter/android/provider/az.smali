.class public final Lcom/twitter/android/provider/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field public static final g:Landroid/net/Uri;

.field public static final h:Landroid/net/Uri;

.field public static final i:Landroid/net/Uri;

.field public static final j:Landroid/net/Uri;

.field public static final k:Landroid/net/Uri;

.field public static final l:Landroid/net/Uri;

.field public static final m:Landroid/net/Uri;

.field public static final n:Landroid/net/Uri;

.field public static final o:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/az;->a:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/az;->b:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/az;->c:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/retweetsofme"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/az;->d:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/retweetedtome"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/az;->e:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/retweetedbyme"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/az;->f:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/mentions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/az;->g:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/replies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/az;->h:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/home"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/az;->i:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/az;->j:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/timeline"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/az;->k:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/drafts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/az;->l:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/mentions_and_rts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/az;->m:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/conversation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/az;->n:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/status_groups_view/search_results"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/az;->o:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
