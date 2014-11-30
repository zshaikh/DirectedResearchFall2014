.class Lb/i;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lb/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/c",
        "<TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb/n;

.field final synthetic b:Lb/c;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lb/e;


# direct methods
.method constructor <init>(Lb/e;Lb/n;Lb/c;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lb/i;->d:Lb/e;

    iput-object p2, p0, Lb/i;->a:Lb/n;

    iput-object p3, p0, Lb/i;->b:Lb/c;

    iput-object p4, p0, Lb/i;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/e;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/e",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lb/i;->a:Lb/n;

    iget-object v1, p0, Lb/i;->b:Lb/c;

    iget-object v2, p0, Lb/i;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1, v2}, Lb/e;->a(Lb/n;Lb/c;Lb/e;Ljava/util/concurrent/Executor;)V

    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic then(Lb/e;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lb/i;->a(Lb/e;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
