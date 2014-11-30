.class public Lcom/dolphin/browser/search/suggestions/m;
.super Ljava/lang/Object;
.source "SearchRecordManager.java"


# static fields
.field private static c:Lcom/dolphin/browser/search/suggestions/m;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/search/suggestions/m;->c:Lcom/dolphin/browser/search/suggestions/m;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/m;->a:Landroid/content/Context;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/m;->b:Landroid/content/ContentResolver;

    .line 25
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/dolphin/browser/search/suggestions/m;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/dolphin/browser/search/suggestions/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/search/suggestions/m;->c:Lcom/dolphin/browser/search/suggestions/m;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/dolphin/browser/search/suggestions/m;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/search/suggestions/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/search/suggestions/m;->c:Lcom/dolphin/browser/search/suggestions/m;

    .line 33
    :cond_0
    sget-object v0, Lcom/dolphin/browser/search/suggestions/m;->c:Lcom/dolphin/browser/search/suggestions/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/m;->b:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->h:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/m;->b:Landroid/content/ContentResolver;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(J)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/m;->b:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->h:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
