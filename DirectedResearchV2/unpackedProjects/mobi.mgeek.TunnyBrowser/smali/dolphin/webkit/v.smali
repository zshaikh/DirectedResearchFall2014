.class Ldolphin/webkit/v;
.super Ldolphin/webkit/HttpAuthHandler;
.source "BrowserFrame.java"


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Ldolphin/webkit/BrowserFrame;


# direct methods
.method constructor <init>(Ldolphin/webkit/BrowserFrame;ZIZ)V
    .locals 0

    .prologue
    .line 1268
    iput-object p1, p0, Ldolphin/webkit/v;->d:Ldolphin/webkit/BrowserFrame;

    iput-boolean p2, p0, Ldolphin/webkit/v;->a:Z

    iput p3, p0, Ldolphin/webkit/v;->b:I

    iput-boolean p4, p0, Ldolphin/webkit/v;->c:Z

    invoke-direct {p0}, Ldolphin/webkit/HttpAuthHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 1282
    iget-object v0, p0, Ldolphin/webkit/v;->d:Ldolphin/webkit/BrowserFrame;

    iget v1, p0, Ldolphin/webkit/v;->b:I

    invoke-static {v0, v1}, Ldolphin/webkit/BrowserFrame;->a(Ldolphin/webkit/BrowserFrame;I)V

    .line 1283
    return-void
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1277
    iget-object v0, p0, Ldolphin/webkit/v;->d:Ldolphin/webkit/BrowserFrame;

    iget v1, p0, Ldolphin/webkit/v;->b:I

    invoke-static {v0, v1, p1, p2}, Ldolphin/webkit/BrowserFrame;->a(Ldolphin/webkit/BrowserFrame;ILjava/lang/String;Ljava/lang/String;)V

    .line 1278
    return-void
.end method

.method public suppressDialog()Z
    .locals 1

    .prologue
    .line 1287
    iget-boolean v0, p0, Ldolphin/webkit/v;->c:Z

    return v0
.end method

.method public useHttpAuthUsernamePassword()Z
    .locals 1

    .prologue
    .line 1272
    iget-boolean v0, p0, Ldolphin/webkit/v;->a:Z

    return v0
.end method
