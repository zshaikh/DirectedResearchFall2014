.class public Lcom/dolphin/browser/util/ap;
.super Ljava/lang/Object;
.source "CpuInfo.java"


# static fields
.field private static a:Lcom/dolphin/browser/util/ap;

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:I

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput v0, Lcom/dolphin/browser/util/ap;->c:I

    .line 32
    sput v0, Lcom/dolphin/browser/util/ap;->d:I

    .line 33
    const/4 v0, 0x1

    sput v0, Lcom/dolphin/browser/util/ap;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/util/ap;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/dolphin/browser/util/ap;->a:Lcom/dolphin/browser/util/ap;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/dolphin/browser/util/ap;

    invoke-direct {v0}, Lcom/dolphin/browser/util/ap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/ap;->a:Lcom/dolphin/browser/util/ap;

    .line 39
    :cond_0
    sget-object v0, Lcom/dolphin/browser/util/ap;->a:Lcom/dolphin/browser/util/ap;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 75
    const-string v0, ""

    .line 76
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 78
    :cond_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 84
    array-length v3, v2

    if-le v3, v4, :cond_0

    .line 85
    aget-object v0, v2, v4

    .line 90
    :cond_1
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 96
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 97
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    return v0
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 109
    sget-object v2, Lcom/dolphin/browser/util/ap;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/util/ap;->d()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/dolphin/browser/util/ap;->b:Ljava/lang/String;

    .line 115
    sget-object v2, Lcom/dolphin/browser/util/ap;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    sget-object v2, Lcom/dolphin/browser/util/ap;->b:Ljava/lang/String;

    const-string v4, "ARM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 120
    sput v1, Lcom/dolphin/browser/util/ap;->c:I

    .line 129
    :goto_1
    sget-object v2, Lcom/dolphin/browser/util/ap;->b:Ljava/lang/String;

    const-string v4, "processor"

    invoke-direct {p0, v2, v4}, Lcom/dolphin/browser/util/ap;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/dolphin/browser/util/ap;->e:I

    .line 130
    sget v2, Lcom/dolphin/browser/util/ap;->e:I

    if-nez v2, :cond_2

    .line 131
    sget-object v2, Lcom/dolphin/browser/util/ap;->b:Ljava/lang/String;

    const-string v4, "Processor"

    invoke-direct {p0, v2, v4}, Lcom/dolphin/browser/util/ap;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/dolphin/browser/util/ap;->e:I

    .line 132
    sget v2, Lcom/dolphin/browser/util/ap;->e:I

    if-nez v2, :cond_2

    .line 133
    sput v1, Lcom/dolphin/browser/util/ap;->e:I

    .line 138
    :cond_2
    sget-object v2, Lcom/dolphin/browser/util/ap;->b:Ljava/lang/String;

    const-string v4, "CPU architecture"

    invoke-direct {p0, v2, v4}, Lcom/dolphin/browser/util/ap;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 146
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 151
    :goto_2
    const/4 v4, 0x7

    if-lt v2, v4, :cond_9

    .line 164
    :goto_3
    if-eqz v1, :cond_8

    .line 165
    sget-object v4, Lcom/dolphin/browser/util/ap;->b:Ljava/lang/String;

    const-string v5, "Processor"

    invoke-direct {p0, v4, v5}, Lcom/dolphin/browser/util/ap;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 167
    const-string v5, "(v6l)"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 173
    :goto_4
    if-eqz v0, :cond_3

    .line 174
    sget v0, Lcom/dolphin/browser/util/ap;->d:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/dolphin/browser/util/ap;->d:I

    .line 178
    :cond_3
    if-lt v2, v3, :cond_4

    .line 179
    sget v0, Lcom/dolphin/browser/util/ap;->d:I

    or-int/lit8 v0, v0, 0x8

    sput v0, Lcom/dolphin/browser/util/ap;->d:I

    .line 183
    :cond_4
    sget-object v0, Lcom/dolphin/browser/util/ap;->b:Ljava/lang/String;

    const-string v1, "Features"

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/util/ap;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 186
    const-string v1, "vfpv3"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "vfpv3d16"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 187
    :cond_5
    sget v1, Lcom/dolphin/browser/util/ap;->d:I

    or-int/lit8 v1, v1, 0x2

    sput v1, Lcom/dolphin/browser/util/ap;->d:I

    .line 190
    :cond_6
    const-string v1, "neon"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    sget v0, Lcom/dolphin/browser/util/ap;->d:I

    or-int/lit8 v0, v0, 0x6

    sput v0, Lcom/dolphin/browser/util/ap;->d:I

    goto/16 :goto_0

    .line 121
    :cond_7
    sget-object v2, Lcom/dolphin/browser/util/ap;->b:Ljava/lang/String;

    const-string v4, "Intel"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const/4 v2, 0x2

    sput v2, Lcom/dolphin/browser/util/ap;->c:I

    goto/16 :goto_1

    .line 147
    :catch_0
    move-exception v2

    move v2, v3

    .line 149
    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    move v1, v0

    goto :goto_3
.end method


# virtual methods
.method public b()I
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/dolphin/browser/util/ap;->e()V

    .line 48
    sget v0, Lcom/dolphin/browser/util/ap;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/dolphin/browser/util/ap;->e()V

    .line 58
    sget v0, Lcom/dolphin/browser/util/ap;->d:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "/proc/cpuinfo"

    invoke-static {v0}, Lcom/dolphin/browser/util/Device;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
