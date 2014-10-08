.class final Lcom/vungle/sdk/o$a$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/sdk/o$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/vungle/sdk/o$a;


# direct methods
.method constructor <init>(Lcom/vungle/sdk/o$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/vungle/sdk/o$a$1;->d:Lcom/vungle/sdk/o$a;

    iput-object p2, p0, Lcom/vungle/sdk/o$a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/sdk/o$a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/vungle/sdk/o$a$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-string v5, "File ("

    .line 117
    iget-object v0, p0, Lcom/vungle/sdk/o$a$1;->d:Lcom/vungle/sdk/o$a;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vungle/sdk/o$a$1;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/vungle/sdk/o$a$1;->b:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/vungle/sdk/o$a$1;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/o$a;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/vungle/sdk/o$a$1;->d:Lcom/vungle/sdk/o$a;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-boolean v4, v1, Lcom/vungle/sdk/o$a;->a:Z

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/vungle/sdk/o$a;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/vungle/sdk/o$a;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/vungle/sdk/VungleUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/vungle/sdk/o$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File ("

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/vungle/sdk/o$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") passes md5: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/vungle/sdk/o$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/vungle/sdk/o$a;->g:Lcom/vungle/sdk/o;

    invoke-static {v2}, Lcom/vungle/sdk/o;->b(Lcom/vungle/sdk/o;)Lcom/vungle/sdk/o$b;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/vungle/sdk/o$a;->g:Lcom/vungle/sdk/o;

    invoke-static {v2}, Lcom/vungle/sdk/o;->b(Lcom/vungle/sdk/o;)Lcom/vungle/sdk/o$b;

    move-result-object v2

    iget-object v3, v1, Lcom/vungle/sdk/o$a;->c:Ljava/lang/String;

    invoke-interface {v2}, Lcom/vungle/sdk/o$b;->b()V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/vungle/sdk/o$a;->b:Z

    .line 119
    return-void

    .line 118
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File ("

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/vungle/sdk/o$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") fails md5 check, but we don\'t care."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/vungle/sdk/o$a;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_4
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/vungle/sdk/o$a;->c:Ljava/lang/String;

    iget-boolean v2, v1, Lcom/vungle/sdk/o$a;->f:Z

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/vungle/sdk/o$a;->g:Lcom/vungle/sdk/o;

    invoke-static {v2}, Lcom/vungle/sdk/o;->c(Lcom/vungle/sdk/o;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Waiting for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/vungle/sdk/o$a;->g:Lcom/vungle/sdk/o;

    invoke-static {v3}, Lcom/vungle/sdk/o;->d(Lcom/vungle/sdk/o;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds before retrying..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/vungle/sdk/o$a$2;

    invoke-direct {v3, v1}, Lcom/vungle/sdk/o$a$2;-><init>(Lcom/vungle/sdk/o$a;)V

    iget-object v4, v1, Lcom/vungle/sdk/o$a;->g:Lcom/vungle/sdk/o;

    invoke-static {v4}, Lcom/vungle/sdk/o;->d(Lcom/vungle/sdk/o;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    :cond_5
    iget-object v2, v1, Lcom/vungle/sdk/o$a;->g:Lcom/vungle/sdk/o;

    invoke-static {v2}, Lcom/vungle/sdk/o;->b(Lcom/vungle/sdk/o;)Lcom/vungle/sdk/o$b;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/vungle/sdk/o$a;->g:Lcom/vungle/sdk/o;

    invoke-static {v2}, Lcom/vungle/sdk/o;->b(Lcom/vungle/sdk/o;)Lcom/vungle/sdk/o$b;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/sdk/o$b;->c()V

    goto :goto_1
.end method
