.class public Lcom/dolphin/browser/util/cw;
.super Ljava/lang/Object;
.source "TraceLog.java"


# static fields
.field private static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/util/cw;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/dolphin/browser/util/cw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:J

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/cw;->f:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/cw;->g:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/util/cw;-><init>(Ljava/lang/String;Z)V

    .line 20
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/util/cw;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 24
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p2, p0, Lcom/dolphin/browser/util/cw;->c:Z

    .line 28
    iput-object p1, p0, Lcom/dolphin/browser/util/cw;->b:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/dolphin/browser/util/cw;->d:Ljava/lang/Object;

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/util/cw;->a:J

    .line 31
    iget-boolean v0, p0, Lcom/dolphin/browser/util/cw;->c:Z

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "TraceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dolphin/browser/util/cw;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " started."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    const-string v0, "TraceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dolphin/browser/util/cw;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " started."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 70
    const-wide/16 v1, 0x0

    .line 71
    sget-object v0, Lcom/dolphin/browser/util/cw;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/util/cw;

    .line 72
    if-eqz v0, :cond_1

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iput-object p1, v0, Lcom/dolphin/browser/util/cw;->b:Ljava/lang/String;

    .line 76
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/util/cw;->a()J

    move-result-wide v1

    .line 77
    iget-object v3, v0, Lcom/dolphin/browser/util/cw;->d:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 78
    sget-object v3, Lcom/dolphin/browser/util/cw;->g:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/dolphin/browser/util/cw;->d:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-wide v0, v1

    .line 81
    return-wide v0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/dolphin/browser/util/cw;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/dolphin/browser/util/cw;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/util/cw;-><init>(Ljava/lang/String;)V

    .line 40
    if-eqz p1, :cond_0

    .line 41
    sget-object v1, Lcom/dolphin/browser/util/cw;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;ZZ)Lcom/dolphin/browser/util/cw;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/dolphin/browser/util/cw;

    invoke-direct {v0, p0, p2}, Lcom/dolphin/browser/util/cw;-><init>(Ljava/lang/String;Z)V

    .line 48
    if-eqz p1, :cond_0

    .line 49
    sget-object v1, Lcom/dolphin/browser/util/cw;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;ZZLjava/lang/Object;)Lcom/dolphin/browser/util/cw;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/dolphin/browser/util/cw;

    invoke-direct {v0, p0, p2, p3}, Lcom/dolphin/browser/util/cw;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    sget-object v1, Lcom/dolphin/browser/util/cw;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    if-eqz p3, :cond_1

    .line 60
    sget-object v1, Lcom/dolphin/browser/util/cw;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/dolphin/browser/util/cw;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/util/cw;

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/dolphin/browser/util/cw;->a()J

    .line 88
    sget-object v1, Lcom/dolphin/browser/util/cw;->f:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/dolphin/browser/util/cw;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;FI)V
    .locals 3

    .prologue
    .line 114
    if-gtz p3, :cond_0

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/util/cw;->c:Z

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "TraceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, p3

    div-float/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_1
    const-string v0, "TraceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, p3

    div-float/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/dolphin/browser/util/cw;->c:Z

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "TraceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " takes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string v0, "TraceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " takes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;Z)Lcom/dolphin/browser/util/cw;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/dolphin/browser/util/cw;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/util/cw;

    .line 130
    if-eqz v0, :cond_0

    .line 131
    iget v1, v0, Lcom/dolphin/browser/util/cw;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/dolphin/browser/util/cw;->e:I

    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 5

    .prologue
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 99
    iget-wide v2, p0, Lcom/dolphin/browser/util/cw;->a:J

    sub-long/2addr v0, v2

    .line 100
    iget-object v2, p0, Lcom/dolphin/browser/util/cw;->b:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;J)V

    .line 101
    iget-object v2, p0, Lcom/dolphin/browser/util/cw;->b:Ljava/lang/String;

    long-to-float v3, v0

    const/high16 v4, 0x447a0000

    div-float/2addr v3, v4

    iget v4, p0, Lcom/dolphin/browser/util/cw;->e:I

    invoke-direct {p0, v2, v3, v4}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;FI)V

    .line 102
    return-wide v0
.end method
