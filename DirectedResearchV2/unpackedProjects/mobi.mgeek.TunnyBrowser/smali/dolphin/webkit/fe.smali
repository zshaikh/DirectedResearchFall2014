.class Ldolphin/webkit/fe;
.super Landroid/os/AsyncTask;
.source "PNRReportSender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ldolphin/webkit/fg;

.field final synthetic c:Ldolphin/webkit/fd;

.field private d:Z


# direct methods
.method constructor <init>(Ldolphin/webkit/fd;Ljava/io/File;Ldolphin/webkit/fg;)V
    .locals 1

    .prologue
    .line 36
    iput-object p1, p0, Ldolphin/webkit/fe;->c:Ldolphin/webkit/fd;

    iput-object p2, p0, Ldolphin/webkit/fe;->a:Ljava/io/File;

    iput-object p3, p0, Ldolphin/webkit/fe;->b:Ldolphin/webkit/fg;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/fe;->d:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Ldolphin/webkit/fe;->c:Ldolphin/webkit/fd;

    iget-object v1, p0, Ldolphin/webkit/fe;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ldolphin/webkit/fd;->a(Ljava/io/File;)Z

    move-result v0

    iput-boolean v0, p0, Ldolphin/webkit/fe;->d:Z

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Ldolphin/webkit/fe;->d:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Ldolphin/webkit/fe;->b:Ldolphin/webkit/fg;

    invoke-interface {v0}, Ldolphin/webkit/fg;->a()V

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/fe;->b:Ldolphin/webkit/fg;

    invoke-interface {v0}, Ldolphin/webkit/fg;->b()V

    goto :goto_0
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ldolphin/webkit/fe;->b:Ldolphin/webkit/fg;

    invoke-interface {v0}, Ldolphin/webkit/fg;->b()V

    .line 55
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ldolphin/webkit/fe;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ldolphin/webkit/fe;->b(Ljava/lang/Void;)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ldolphin/webkit/fe;->a(Ljava/lang/Void;)V

    return-void
.end method
