.class public abstract Lmobi/mgeek/util/CrashReporter/d;
.super Ljava/lang/Object;
.source "CrashReportController.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lmobi/mgeek/util/CrashReporter/d;->a:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public varargs a(I[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lmobi/mgeek/util/CrashReporter/d;->h()Lmobi/mgeek/util/CrashReporter/k;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p1, p2}, Lmobi/mgeek/util/CrashReporter/k;->a(I[Ljava/lang/Object;)V

    .line 29
    :cond_0
    return-void
.end method

.method public abstract a(J)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public abstract a(Ljava/util/Properties;)V
.end method

.method public abstract a(Ljava/io/File;)Z
.end method

.method public abstract b(Ljava/util/Properties;)V
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public abstract c()J
.end method

.method public abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract g()V
.end method

.method protected abstract h()Lmobi/mgeek/util/CrashReporter/k;
.end method

.method public final k()Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/d;->a:Landroid/content/Context;

    return-object v0
.end method
