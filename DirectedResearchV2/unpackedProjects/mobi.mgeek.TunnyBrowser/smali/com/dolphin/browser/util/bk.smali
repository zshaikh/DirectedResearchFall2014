.class public final Lcom/dolphin/browser/util/bk;
.super Ljava/lang/Object;
.source "LocaleGroup.java"


# static fields
.field public static final a:Lcom/dolphin/browser/util/bk;

.field public static final b:Lcom/dolphin/browser/util/bk;

.field public static final c:Lcom/dolphin/browser/util/bk;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/util/bk;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/Object;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;


# instance fields
.field private final j:Ljava/lang/String;

.field private final k:[Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/bk;->f:Ljava/lang/Object;

    .line 26
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ru"

    aput-object v1, v0, v3

    const-string v1, "uk"

    aput-object v1, v0, v4

    const-string v1, "be"

    aput-object v1, v0, v5

    const-string v1, "kk"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "hy"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "az"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "tk"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "uz"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ky"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ka"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/util/bk;->g:[Ljava/lang/String;

    .line 30
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "US"

    aput-object v1, v0, v3

    const-string v1, "GB"

    aput-object v1, v0, v4

    const-string v1, "CA"

    aput-object v1, v0, v5

    sput-object v0, Lcom/dolphin/browser/util/bk;->h:[Ljava/lang/String;

    .line 34
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "US"

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolphin/browser/util/bk;->i:[Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/bk;->d:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/dolphin/browser/util/bk;->e:Ljava/util/Map;

    .line 43
    const-string v0, "yandex"

    sget-object v1, Lcom/dolphin/browser/util/bk;->g:[Ljava/lang/String;

    invoke-static {v1}, Lcom/dolphin/browser/util/bk;->b([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/bk;->a(Ljava/lang/String;[Ljava/util/Locale;)Lcom/dolphin/browser/util/bk;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/util/bk;->a:Lcom/dolphin/browser/util/bk;

    .line 45
    const-string v0, "yahoo"

    sget-object v1, Lcom/dolphin/browser/util/bk;->h:[Ljava/lang/String;

    invoke-static {v1}, Lcom/dolphin/browser/util/bk;->a([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/bk;->a(Ljava/lang/String;[Ljava/util/Locale;)Lcom/dolphin/browser/util/bk;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/util/bk;->b:Lcom/dolphin/browser/util/bk;

    .line 47
    const-string v0, "namespace"

    sget-object v1, Lcom/dolphin/browser/util/bk;->i:[Ljava/lang/String;

    invoke-static {v1}, Lcom/dolphin/browser/util/bk;->a([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/bk;->a(Ljava/lang/String;[Ljava/util/Locale;)Lcom/dolphin/browser/util/bk;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/util/bk;->c:Lcom/dolphin/browser/util/bk;

    .line 48
    return-void
.end method

.method varargs constructor <init>(Ljava/lang/String;[Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/dolphin/browser/util/bk;->j:Ljava/lang/String;

    .line 257
    invoke-virtual {p2}, [Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    iput-object v0, p0, Lcom/dolphin/browser/util/bk;->k:[Ljava/util/Locale;

    .line 258
    return-void
.end method

.method private static final varargs a(Ljava/lang/String;[Ljava/util/Locale;)Lcom/dolphin/browser/util/bk;
    .locals 5

    .prologue
    .line 67
    new-instance v1, Lcom/dolphin/browser/util/bk;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/util/bk;-><init>(Ljava/lang/String;[Ljava/util/Locale;)V

    .line 68
    sget-object v0, Lcom/dolphin/browser/util/bk;->d:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 70
    sget-object v4, Lcom/dolphin/browser/util/bk;->e:Ljava/util/Map;

    invoke-interface {v4, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-object v1
.end method

.method public static a(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    if-nez p0, :cond_1

    .line 127
    const/4 v0, 0x0

    .line 148
    :cond_0
    :goto_0
    return-object v0

    .line 130
    :cond_1
    invoke-static {p0}, Lcom/dolphin/browser/util/bk;->c(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 131
    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 137
    new-instance v0, Ljava/util/Locale;

    const-string v3, ""

    invoke-direct {v0, v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {v0}, Lcom/dolphin/browser/util/bk;->c(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_2
    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-static {v0}, Lcom/dolphin/browser/util/bk;->c(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([Ljava/lang/Object;Lcom/dolphin/browser/util/bm;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lcom/dolphin/browser/util/bm",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 210
    if-nez p0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    .line 213
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    array-length v2, p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, p0, v0

    .line 215
    invoke-interface {p1, v3}, Lcom/dolphin/browser/util/bm;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 216
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 163
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 164
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Locale;

    .line 170
    :goto_0
    return-object v0

    .line 166
    :cond_1
    if-nez p0, :cond_2

    .line 167
    const-string p0, ""

    .line 169
    :cond_2
    invoke-static {p1}, Lcom/dolphin/browser/util/bk;->c([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {p0, v0}, Lcom/dolphin/browser/util/bk;->b(Ljava/lang/String;[Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method private static varargs a([Ljava/lang/String;)[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 182
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/dolphin/browser/util/bk;->a(Ljava/lang/String;[Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static varargs b(Ljava/lang/String;[Ljava/lang/String;)[Ljava/util/Locale;
    .locals 4

    .prologue
    .line 187
    array-length v0, p1

    new-array v1, v0, [Ljava/util/Locale;

    .line 188
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 189
    new-instance v2, Ljava/util/Locale;

    aget-object v3, p1, v0

    invoke-direct {v2, p0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    return-object v1
.end method

.method private static varargs b([Ljava/lang/String;)[Ljava/util/Locale;
    .locals 4

    .prologue
    .line 196
    array-length v0, p0

    new-array v1, v0, [Ljava/util/Locale;

    .line 197
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 198
    new-instance v2, Ljava/util/Locale;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return-object v1
.end method

.method private static final c(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    sget-object v1, Lcom/dolphin/browser/util/bk;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/util/bk;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static c([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    new-instance v0, Lcom/dolphin/browser/util/bl;

    invoke-direct {v0}, Lcom/dolphin/browser/util/bl;-><init>()V

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/bk;->a([Ljava/lang/Object;Lcom/dolphin/browser/util/bm;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/util/Locale;)Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/dolphin/browser/util/bk;->k:[Ljava/util/Locale;

    invoke-static {v0, p1}, Lcom/dolphin/browser/util/e;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
