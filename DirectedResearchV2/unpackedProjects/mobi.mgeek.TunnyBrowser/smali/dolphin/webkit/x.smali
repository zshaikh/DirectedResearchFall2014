.class Ldolphin/webkit/x;
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
    .line 1327
    iput-object p1, p0, Ldolphin/webkit/x;->a:Ldolphin/webkit/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1329
    iget-object v0, p0, Ldolphin/webkit/x;->a:Ldolphin/webkit/w;

    iget-object v0, v0, Ldolphin/webkit/w;->d:Ldolphin/webkit/BrowserFrame;

    iget-object v1, p0, Ldolphin/webkit/x;->a:Ldolphin/webkit/w;

    iget v1, v1, Ldolphin/webkit/w;->b:I

    invoke-static {v0, v1}, Ldolphin/webkit/BrowserFrame;->b(Ldolphin/webkit/BrowserFrame;I)V

    .line 1330
    return-void
.end method
