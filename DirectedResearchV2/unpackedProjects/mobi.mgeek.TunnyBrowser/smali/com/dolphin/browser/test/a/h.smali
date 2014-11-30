.class public final Lcom/dolphin/browser/test/a/h;
.super Ljava/lang/Object;
.source "NetworkUsageRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolphin/browser/test/a/h;->a:J

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/test/a/h;->h:J

    .line 35
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/test/a/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method final a(J)V
    .locals 0

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/dolphin/browser/test/a/h;->e:J

    .line 97
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/dolphin/browser/test/a/h;->b:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/dolphin/browser/test/a/h;->e:J

    return-wide v0
.end method

.method final b(J)V
    .locals 0

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/dolphin/browser/test/a/h;->f:J

    .line 101
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/dolphin/browser/test/a/h;->c:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/dolphin/browser/test/a/h;->f:J

    return-wide v0
.end method

.method final c(J)V
    .locals 0

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/dolphin/browser/test/a/h;->g:J

    .line 105
    return-void
.end method

.method final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/dolphin/browser/test/a/h;->d:Ljava/lang/String;

    .line 93
    return-void
.end method

.method final d()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 135
    iget-wide v0, p0, Lcom/dolphin/browser/test/a/h;->e:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/dolphin/browser/test/a/h;->f:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 130
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[%s]%s, incoming=%,d, outgoing=%,d, duration=%,d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dolphin/browser/test/a/h;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/dolphin/browser/test/a/h;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/dolphin/browser/test/a/h;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/dolphin/browser/test/a/h;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/dolphin/browser/test/a/h;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
