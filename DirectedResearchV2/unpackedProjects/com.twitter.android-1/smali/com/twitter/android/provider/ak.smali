.class public final Lcom/twitter/android/provider/ak;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ak;->a:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/subscribers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ak;->b:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/members"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ak;->c:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ak;->d:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/blocked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ak;->e:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/following"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ak;->f:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/followers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ak;->g:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/people"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ak;->h:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ak;->i:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/slug"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ak;->j:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/activity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ak;->k:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/favorited"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ak;->l:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/user_groups_view/retweeted"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ak;->m:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
