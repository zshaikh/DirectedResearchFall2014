.class public final Lc/a/a/aa;
.super Lc/a/a/a/g;
.source "Seconds.java"


# static fields
.field public static final a:Lc/a/a/aa;

.field public static final b:Lc/a/a/aa;

.field public static final c:Lc/a/a/aa;

.field public static final d:Lc/a/a/aa;

.field public static final e:Lc/a/a/aa;

.field public static final f:Lc/a/a/aa;

.field private static final g:Lc/a/a/d/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lc/a/a/aa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/a/a/aa;-><init>(I)V

    sput-object v0, Lc/a/a/aa;->a:Lc/a/a/aa;

    .line 47
    new-instance v0, Lc/a/a/aa;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc/a/a/aa;-><init>(I)V

    sput-object v0, Lc/a/a/aa;->b:Lc/a/a/aa;

    .line 49
    new-instance v0, Lc/a/a/aa;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lc/a/a/aa;-><init>(I)V

    sput-object v0, Lc/a/a/aa;->c:Lc/a/a/aa;

    .line 51
    new-instance v0, Lc/a/a/aa;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lc/a/a/aa;-><init>(I)V

    sput-object v0, Lc/a/a/aa;->d:Lc/a/a/aa;

    .line 53
    new-instance v0, Lc/a/a/aa;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lc/a/a/aa;-><init>(I)V

    sput-object v0, Lc/a/a/aa;->e:Lc/a/a/aa;

    .line 55
    new-instance v0, Lc/a/a/aa;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lc/a/a/aa;-><init>(I)V

    sput-object v0, Lc/a/a/aa;->f:Lc/a/a/aa;

    .line 58
    invoke-static {}, Lc/a/a/d/aa;->a()Lc/a/a/d/ab;

    move-result-object v0

    invoke-static {}, Lc/a/a/u;->d()Lc/a/a/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/a/d/ab;->a(Lc/a/a/u;)Lc/a/a/d/ab;

    move-result-object v0

    sput-object v0, Lc/a/a/aa;->g:Lc/a/a/d/ab;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lc/a/a/a/g;-><init>(I)V

    .line 199
    return-void
.end method

.method public static a(I)Lc/a/a/aa;
    .locals 1

    .prologue
    .line 72
    sparse-switch p0, :sswitch_data_0

    .line 86
    new-instance v0, Lc/a/a/aa;

    invoke-direct {v0, p0}, Lc/a/a/aa;-><init>(I)V

    :goto_0
    return-object v0

    .line 74
    :sswitch_0
    sget-object v0, Lc/a/a/aa;->a:Lc/a/a/aa;

    goto :goto_0

    .line 76
    :sswitch_1
    sget-object v0, Lc/a/a/aa;->b:Lc/a/a/aa;

    goto :goto_0

    .line 78
    :sswitch_2
    sget-object v0, Lc/a/a/aa;->c:Lc/a/a/aa;

    goto :goto_0

    .line 80
    :sswitch_3
    sget-object v0, Lc/a/a/aa;->d:Lc/a/a/aa;

    goto :goto_0

    .line 82
    :sswitch_4
    sget-object v0, Lc/a/a/aa;->e:Lc/a/a/aa;

    goto :goto_0

    .line 84
    :sswitch_5
    sget-object v0, Lc/a/a/aa;->f:Lc/a/a/aa;

    goto :goto_0

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x7fffffff -> :sswitch_4
    .end sparse-switch
.end method

.method public static a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/aa;
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lc/a/a/m;->b()Lc/a/a/m;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lc/a/a/a/g;->a(Lc/a/a/y;Lc/a/a/y;Lc/a/a/m;)I

    move-result v0

    .line 102
    invoke-static {v0}, Lc/a/a/aa;->a(I)Lc/a/a/aa;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lc/a/a/m;
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lc/a/a/m;->b()Lc/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method public b()Lc/a/a/u;
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lc/a/a/u;->d()Lc/a/a/u;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lc/a/a/aa;->d()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/a/a/aa;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
