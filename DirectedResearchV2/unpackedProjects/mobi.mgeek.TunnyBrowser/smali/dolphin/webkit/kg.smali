.class Ldolphin/webkit/kg;
.super Ljava/lang/Thread;
.source "WebViewDatabaseClassic.java"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ldolphin/webkit/kf;


# direct methods
.method constructor <init>(Ldolphin/webkit/kf;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Ldolphin/webkit/kg;->b:Ldolphin/webkit/kf;

    iput-object p2, p0, Ldolphin/webkit/kg;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Ldolphin/webkit/kg;->b:Ldolphin/webkit/kf;

    iget-object v1, p0, Ldolphin/webkit/kg;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Ldolphin/webkit/kf;->a(Ldolphin/webkit/kf;Landroid/content/Context;)V

    .line 256
    return-void
.end method
