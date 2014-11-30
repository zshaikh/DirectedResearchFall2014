.class public Ldolphin/net/a/a;
.super Ljava/lang/Object;
.source "NetworkObservatory.java"


# static fields
.field private static e:Ldolphin/net/a/a;

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I


# instance fields
.field a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:Ldolphin/net/a/d;

.field d:Ldolphin/net/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x3a98

    .line 73
    const/4 v0, 0x0

    sput-object v0, Ldolphin/net/a/a;->e:Ldolphin/net/a/a;

    .line 89
    const/16 v0, 0x5dc

    sput v0, Ldolphin/net/a/a;->f:I

    .line 90
    sput v1, Ldolphin/net/a/a;->g:I

    .line 106
    const/16 v0, 0x1388

    sput v0, Ldolphin/net/a/a;->h:I

    .line 107
    sput v1, Ldolphin/net/a/a;->i:I

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide v1, 0x3fee666666666666L

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ldolphin/net/a/b;

    invoke-direct {v0, p0}, Ldolphin/net/a/b;-><init>(Ldolphin/net/a/a;)V

    iput-object v0, p0, Ldolphin/net/a/a;->a:Ljava/util/Comparator;

    .line 20
    new-instance v0, Ldolphin/net/a/c;

    invoke-direct {v0, p0}, Ldolphin/net/a/c;-><init>(Ldolphin/net/a/a;)V

    iput-object v0, p0, Ldolphin/net/a/a;->b:Ljava/util/Comparator;

    .line 181
    iput-object v3, p0, Ldolphin/net/a/a;->c:Ldolphin/net/a/d;

    .line 182
    iput-object v3, p0, Ldolphin/net/a/a;->d:Ldolphin/net/a/d;

    .line 110
    new-instance v0, Ldolphin/net/a/d;

    invoke-direct {v0, p0}, Ldolphin/net/a/d;-><init>(Ldolphin/net/a/a;)V

    iput-object v0, p0, Ldolphin/net/a/a;->c:Ldolphin/net/a/d;

    .line 111
    iget-object v0, p0, Ldolphin/net/a/a;->c:Ldolphin/net/a/d;

    invoke-virtual {v0, v1, v2}, Ldolphin/net/a/d;->a(D)V

    .line 113
    new-instance v0, Ldolphin/net/a/d;

    invoke-direct {v0, p0}, Ldolphin/net/a/d;-><init>(Ldolphin/net/a/a;)V

    iput-object v0, p0, Ldolphin/net/a/a;->d:Ldolphin/net/a/d;

    .line 114
    iget-object v0, p0, Ldolphin/net/a/a;->d:Ldolphin/net/a/d;

    invoke-virtual {v0, v1, v2}, Ldolphin/net/a/d;->a(D)V

    .line 115
    return-void
.end method

.method public static a()Ldolphin/net/a/a;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Ldolphin/net/a/a;->e:Ldolphin/net/a/a;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ldolphin/net/a/a;

    invoke-direct {v0}, Ldolphin/net/a/a;-><init>()V

    sput-object v0, Ldolphin/net/a/a;->e:Ldolphin/net/a/a;

    .line 122
    :cond_0
    sget-object v0, Ldolphin/net/a/a;->e:Ldolphin/net/a/a;

    return-object v0
.end method

.method private d()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Ldolphin/net/a/a;->c:Ldolphin/net/a/d;

    invoke-virtual {v0}, Ldolphin/net/a/d;->a()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/net/a/a;->c:Ldolphin/net/a/d;

    invoke-virtual {v0}, Ldolphin/net/a/d;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 171
    :goto_0
    return v0

    .line 169
    :cond_0
    sget v0, Ldolphin/net/a/a;->f:I

    goto :goto_0
.end method

.method private e()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Ldolphin/net/a/a;->d:Ldolphin/net/a/d;

    invoke-virtual {v0}, Ldolphin/net/a/d;->a()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/net/a/a;->d:Ldolphin/net/a/d;

    invoke-virtual {v0}, Ldolphin/net/a/d;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 178
    :goto_0
    return v0

    .line 176
    :cond_0
    sget v0, Ldolphin/net/a/a;->h:I

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 127
    const-string v0, "NetworkObservatory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportSocketConnectionTime("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-gtz p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Ldolphin/net/a/a;->c:Ldolphin/net/a/d;

    invoke-virtual {v0, p1}, Ldolphin/net/a/d;->a(I)V

    goto :goto_0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Ldolphin/net/a/a;->d()I

    move-result v0

    .line 154
    sget v1, Ldolphin/net/a/a;->f:I

    if-ge v0, v1, :cond_1

    sget v0, Ldolphin/net/a/a;->f:I

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    sget v1, Ldolphin/net/a/a;->g:I

    if-le v0, v1, :cond_0

    sget v0, Ldolphin/net/a/a;->g:I

    goto :goto_0
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 140
    const-string v0, "NetworkObservatory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportSocketTimeout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-gtz p1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Ldolphin/net/a/a;->d:Ldolphin/net/a/d;

    invoke-virtual {v0, p1}, Ldolphin/net/a/d;->a(I)V

    goto :goto_0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Ldolphin/net/a/a;->e()I

    move-result v0

    .line 162
    sget v1, Ldolphin/net/a/a;->h:I

    if-ge v0, v1, :cond_1

    sget v0, Ldolphin/net/a/a;->h:I

    .line 164
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    sget v1, Ldolphin/net/a/a;->i:I

    if-le v0, v1, :cond_0

    sget v0, Ldolphin/net/a/a;->i:I

    goto :goto_0
.end method
