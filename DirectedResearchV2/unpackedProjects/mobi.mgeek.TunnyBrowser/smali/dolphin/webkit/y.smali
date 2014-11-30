.class Ldolphin/webkit/y;
.super Ljava/lang/Object;
.source "BrowserFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldolphin/webkit/w;


# direct methods
.method constructor <init>(Ldolphin/webkit/w;)V
    .locals 0

    .prologue
    .line 1335
    iput-object p1, p0, Ldolphin/webkit/y;->a:Ldolphin/webkit/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1337
    iget-object v0, p0, Ldolphin/webkit/y;->a:Ldolphin/webkit/w;

    iget-object v0, v0, Ldolphin/webkit/w;->d:Ldolphin/webkit/BrowserFrame;

    iget-object v1, p0, Ldolphin/webkit/y;->a:Ldolphin/webkit/w;

    iget v1, v1, Ldolphin/webkit/w;->b:I

    iget-object v2, p0, Ldolphin/webkit/y;->a:Ldolphin/webkit/w;

    iget v2, v2, Ldolphin/webkit/w;->c:I

    invoke-static {v0, v1, v2}, Ldolphin/webkit/BrowserFrame;->a(Ldolphin/webkit/BrowserFrame;II)V

    .line 1338
    return-void
.end method
