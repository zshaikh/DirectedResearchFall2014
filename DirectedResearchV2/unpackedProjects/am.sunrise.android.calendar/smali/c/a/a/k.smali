.class public final Lc/a/a/k;
.super Lc/a/a/a/g;
.source "Days.java"


# static fields
.field public static final a:Lc/a/a/k;

.field public static final b:Lc/a/a/k;

.field public static final c:Lc/a/a/k;

.field public static final d:Lc/a/a/k;

.field public static final e:Lc/a/a/k;

.field public static final f:Lc/a/a/k;

.field public static final g:Lc/a/a/k;

.field public static final h:Lc/a/a/k;

.field public static final i:Lc/a/a/k;

.field public static final j:Lc/a/a/k;

.field private static final k:Lc/a/a/d/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lc/a/a/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/a/a/k;-><init>(I)V

    sput-object v0, Lc/a/a/k;->a:Lc/a/a/k;

    .line 47
    new-instance v0, Lc/a/a/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc/a/a/k;-><init>(I)V

    sput-object v0, Lc/a/a/k;->b:Lc/a/a/k;

    .line 49
    new-instance v0, Lc/a/a/k;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lc/a/a/k;-><init>(I)V

    sput-object v0, Lc/a/a/k;->c:Lc/a/a/k;

    .line 51
    new-instance v0, Lc/a/a/k;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lc/a/a/k;-><init>(I)V

    sput-object v0, Lc/a/a/k;->d:Lc/a/a/k;

    .line 53
    new-instance v0, Lc/a/a/k;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lc/a/a/k;-><init>(I)V

    sput-object v0, Lc/a/a/k;->e:Lc/a/a/k;

    .line 55
    new-instance v0, Lc/a/a/k;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lc/a/a/k;-><init>(I)V

    sput-object v0, Lc/a/a/k;->f:Lc/a/a/k;

    .line 57
    new-instance v0, Lc/a/a/k;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lc/a/a/k;-><init>(I)V

    sput-object v0, Lc/a/a/k;->g:Lc/a/a/k;

    .line 59
    new-instance v0, Lc/a/a/k;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lc/a/a/k;-><init>(I)V

    sput-object v0, Lc/a/a/k;->h:Lc/a/a/k;

    .line 61
    new-instance v0, Lc/a/a/k;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lc/a/a/k;-><init>(I)V

    sput-object v0, Lc/a/a/k;->i:Lc/a/a/k;

    .line 63
    new-instance v0, Lc/a/a/k;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lc/a/a/k;-><init>(I)V

    sput-object v0, Lc/a/a/k;->j:Lc/a/a/k;

    .line 66
    invoke-static {}, Lc/a/a/d/aa;->a()Lc/a/a/d/ab;

    move-result-object v0

    invoke-static {}, Lc/a/a/u;->c()Lc/a/a/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/a/d/ab;->a(Lc/a/a/u;)Lc/a/a/d/ab;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->k:Lc/a/a/d/ab;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lc/a/a/a/g;-><init>(I)V

    .line 217
    return-void
.end method

.method public static a(I)Lc/a/a/k;
    .locals 1

    .prologue
    .line 80
    sparse-switch p0, :sswitch_data_0

    .line 102
    new-instance v0, Lc/a/a/k;

    invoke-direct {v0, p0}, Lc/a/a/k;-><init>(I)V

    :goto_0
    return-object v0

    .line 82
    :sswitch_0
    sget-object v0, Lc/a/a/k;->a:Lc/a/a/k;

    goto :goto_0

    .line 84
    :sswitch_1
    sget-object v0, Lc/a/a/k;->b:Lc/a/a/k;

    goto :goto_0

    .line 86
    :sswitch_2
    sget-object v0, Lc/a/a/k;->c:Lc/a/a/k;

    goto :goto_0

    .line 88
    :sswitch_3
    sget-object v0, Lc/a/a/k;->d:Lc/a/a/k;

    goto :goto_0

    .line 90
    :sswitch_4
    sget-object v0, Lc/a/a/k;->e:Lc/a/a/k;

    goto :goto_0

    .line 92
    :sswitch_5
    sget-object v0, Lc/a/a/k;->f:Lc/a/a/k;

    goto :goto_0

    .line 94
    :sswitch_6
    sget-object v0, Lc/a/a/k;->g:Lc/a/a/k;

    goto :goto_0

    .line 96
    :sswitch_7
    sget-object v0, Lc/a/a/k;->h:Lc/a/a/k;

    goto :goto_0

    .line 98
    :sswitch_8
    sget-object v0, Lc/a/a/k;->i:Lc/a/a/k;

    goto :goto_0

    .line 100
    :sswitch_9
    sget-object v0, Lc/a/a/k;->j:Lc/a/a/k;

    goto :goto_0

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_9
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x7fffffff -> :sswitch_8
    .end sparse-switch
.end method

.method public static a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lc/a/a/m;->f()Lc/a/a/m;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lc/a/a/a/g;->a(Lc/a/a/y;Lc/a/a/y;Lc/a/a/m;)I

    move-result v0

    .line 119
    invoke-static {v0}, Lc/a/a/k;->a(I)Lc/a/a/k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lc/a/a/m;
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lc/a/a/m;->f()Lc/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method public b()Lc/a/a/u;
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Lc/a/a/u;->c()Lc/a/a/u;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lc/a/a/k;->d()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/a/a/k;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
