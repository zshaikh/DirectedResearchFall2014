.class public Ldolphin/net/b/a;
.super Ljava/lang/Object;
.source "DNSCache.java"


# static fields
.field private static a:Z

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:Ldolphin/net/b/a;


# instance fields
.field private f:Lcom/h/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/h/a/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Ldolphin/net/b/a;->a:Z

    .line 20
    const/16 v0, 0x3e8

    sput v0, Ldolphin/net/b/a;->b:I

    .line 21
    const/16 v0, 0xa

    sput v0, Ldolphin/net/b/a;->c:I

    .line 22
    const/16 v0, 0x2710

    sput v0, Ldolphin/net/b/a;->d:I

    .line 24
    const/4 v0, 0x0

    sput-object v0, Ldolphin/net/b/a;->e:Ldolphin/net/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/h/a/a;

    const-wide v1, 0x3f847ae147ae147bL

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/h/a/a;-><init>(DI)V

    iput-object v0, p0, Ldolphin/net/b/a;->f:Lcom/h/a/a;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldolphin/net/b/a;->g:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldolphin/net/b/a;->h:Ljava/util/HashMap;

    .line 41
    return-void
.end method

.method public static a()Ldolphin/net/b/a;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Ldolphin/net/b/a;->e:Ldolphin/net/b/a;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ldolphin/net/b/a;

    invoke-direct {v0}, Ldolphin/net/b/a;-><init>()V

    sput-object v0, Ldolphin/net/b/a;->e:Ldolphin/net/b/a;

    .line 34
    :cond_0
    sget-object v0, Ldolphin/net/b/a;->e:Ldolphin/net/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 90
    const-string v4, ""

    .line 93
    sget-boolean v0, Ldolphin/net/b/a;->a:Z

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Ldolphin/net/b/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 95
    if-eqz v0, :cond_2

    move v5, v1

    move v3, v1

    .line 96
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_2

    .line 97
    iget-object v1, p0, Ldolphin/net/b/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 98
    if-eqz v1, :cond_0

    .line 99
    const-string v6, "DNSCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getBestIp4HostName]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "|"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "|"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "|"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 101
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 102
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 96
    :goto_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v4, v2

    move v3, v1

    goto :goto_0

    .line 105
    :cond_0
    const-string v2, "DNSCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getBestIp4HostName]"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "|0"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v1, v3

    move-object v2, v4

    goto :goto_1

    .line 111
    :cond_2
    return-object v4
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Ldolphin/net/b/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    sget v1, Ldolphin/net/b/a;->b:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Ldolphin/net/b/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    sget v1, Ldolphin/net/b/a;->d:I

    if-le v0, v1, :cond_2

    .line 50
    :cond_1
    iget-object v0, p0, Ldolphin/net/b/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 51
    iget-object v0, p0, Ldolphin/net/b/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 54
    :cond_2
    invoke-virtual {p0, p1}, Ldolphin/net/b/a;->c(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Ldolphin/net/b/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 59
    if-eqz v0, :cond_5

    move v2, v3

    .line 60
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 61
    iget-object v1, p0, Ldolphin/net/b/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 62
    if-eqz v1, :cond_3

    .line 63
    iget-object v4, p0, Ldolphin/net/b/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 65
    :cond_3
    const-string v4, "DNSCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateDNSCache]Error:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 67
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v2, Ldolphin/net/b/a;->c:I

    if-le v0, v2, :cond_6

    sget v0, Ldolphin/net/b/a;->c:I

    :goto_3
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    sget v0, Ldolphin/net/b/a;->c:I

    if-ge v3, v0, :cond_8

    .line 74
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Ldolphin/net/b/a;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 77
    if-nez v0, :cond_7

    .line 78
    iget-object v0, p0, Ldolphin/net/b/a;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 71
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_3

    .line 80
    :cond_7
    iget-object v2, p0, Ldolphin/net/b/a;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 82
    :cond_8
    iget-object v0, p0, Ldolphin/net/b/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    sget-boolean v0, Ldolphin/net/b/a;->a:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Ldolphin/net/b/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 119
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ldolphin/net/b/a;->f:Lcom/h/a/a;

    invoke-virtual {v0, p1}, Lcom/h/a/a;->a(Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ldolphin/net/b/a;->f:Lcom/h/a/a;

    invoke-virtual {v0, p1}, Lcom/h/a/a;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
