.class public Lcom/dolphin/browser/f/c/a;
.super Ljava/lang/Object;
.source "WebServiceClient.java"


# static fields
.field private static a:Lcom/dolphin/browser/f/c/a;


# instance fields
.field private b:Lcom/dolphin/browser/f/c/c;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/dolphin/browser/f/c/b;

    invoke-direct {v0}, Lcom/dolphin/browser/f/c/b;-><init>()V

    .line 22
    new-instance v1, Lcom/dolphin/browser/f/c/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/f/c/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dolphin/browser/f/c/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dolphin/browser/f/c/b;->c()I

    move-result v4

    invoke-virtual {v0}, Lcom/dolphin/browser/f/c/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dolphin/browser/f/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/dolphin/browser/f/c/a;->b:Lcom/dolphin/browser/f/c/c;

    .line 24
    return-void
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/f/c/a;
    .locals 2

    .prologue
    .line 12
    const-class v1, Lcom/dolphin/browser/f/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/f/c/a;->a:Lcom/dolphin/browser/f/c/a;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/dolphin/browser/f/c/a;

    invoke-direct {v0}, Lcom/dolphin/browser/f/c/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/f/c/a;->a:Lcom/dolphin/browser/f/c/a;

    .line 16
    :cond_0
    sget-object v0, Lcom/dolphin/browser/f/c/a;->a:Lcom/dolphin/browser/f/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    const-string v0, "http://opsen.dolphin-browser.com/api/1/desktop.json"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/dolphin/browser/f/c/a;->b:Lcom/dolphin/browser/f/c/c;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/f/c/c;->a(Landroid/net/Uri$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
