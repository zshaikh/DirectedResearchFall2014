.class Lcom/dolphin/browser/q/b/d;
.super Lcom/dolphin/browser/util/f;
.source "AsyncTaskRunner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Lcom/dolphin/browser/q/b/ar;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/a;

.field private final b:Lcom/dolphin/browser/q/b/c;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/q/b/a;Lcom/dolphin/browser/q/b/c;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/dolphin/browser/q/b/d;->a:Lcom/dolphin/browser/q/b/a;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/dolphin/browser/q/b/d;->b:Lcom/dolphin/browser/q/b/c;

    .line 79
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/dolphin/browser/q/b/ar;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/dolphin/browser/q/b/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    .line 99
    invoke-interface {v0}, Lcom/dolphin/browser/q/b/ar;->a()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/c/b/a/f; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    iget-object v1, p0, Lcom/dolphin/browser/q/b/d;->a:Lcom/dolphin/browser/q/b/a;

    invoke-static {v1}, Lcom/dolphin/browser/q/b/a;->a(Lcom/dolphin/browser/q/b/a;)Lcom/dolphin/browser/q/b/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/c/b/a/f;->a()Lcom/c/b/a/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/q/b/b;->a(Lcom/c/b/a/a;)V

    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/q/b/d;->a:Lcom/dolphin/browser/q/b/a;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/a;->a(Lcom/dolphin/browser/q/b/a;)Lcom/dolphin/browser/q/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/b;->a()V

    .line 108
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    check-cast p1, [Lcom/dolphin/browser/q/b/ar;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/q/b/d;->a([Lcom/dolphin/browser/q/b/ar;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/q/b/d;->b:Lcom/dolphin/browser/q/b/c;

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/q/b/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/q/b/d;->b:Lcom/dolphin/browser/q/b/c;

    invoke-interface {v0}, Lcom/dolphin/browser/q/b/c;->a()V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/b/d;->b:Lcom/dolphin/browser/q/b/c;

    invoke-interface {v0}, Lcom/dolphin/browser/q/b/c;->b()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/q/b/d;->b:Lcom/dolphin/browser/q/b/c;

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/q/b/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/q/b/d;->b:Lcom/dolphin/browser/q/b/c;

    invoke-interface {v0}, Lcom/dolphin/browser/q/b/c;->a()V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/q/b/d;->b:Lcom/dolphin/browser/q/b/c;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/q/b/c;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
