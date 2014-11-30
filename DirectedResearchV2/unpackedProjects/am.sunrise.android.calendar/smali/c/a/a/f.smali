.class public Lc/a/a/f;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"


# static fields
.field private static final a:Lc/a/a/h;

.field private static volatile b:Lc/a/a/g;

.field private static volatile c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc/a/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lc/a/a/h;

    invoke-direct {v0}, Lc/a/a/h;-><init>()V

    sput-object v0, Lc/a/a/f;->a:Lc/a/a/h;

    .line 43
    sget-object v0, Lc/a/a/f;->a:Lc/a/a/h;

    sput-object v0, Lc/a/a/f;->b:Lc/a/a/g;

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 50
    const-string v1, "UT"

    sget-object v2, Lc/a/a/i;->a:Lc/a/a/i;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "UTC"

    sget-object v2, Lc/a/a/i;->a:Lc/a/a/i;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "GMT"

    sget-object v2, Lc/a/a/i;->a:Lc/a/a/i;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "EST"

    const-string v2, "America/New_York"

    invoke-static {v0, v1, v2}, Lc/a/a/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "EDT"

    const-string v2, "America/New_York"

    invoke-static {v0, v1, v2}, Lc/a/a/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "CST"

    const-string v2, "America/Chicago"

    invoke-static {v0, v1, v2}, Lc/a/a/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "CDT"

    const-string v2, "America/Chicago"

    invoke-static {v0, v1, v2}, Lc/a/a/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "MST"

    const-string v2, "America/Denver"

    invoke-static {v0, v1, v2}, Lc/a/a/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "MDT"

    const-string v2, "America/Denver"

    invoke-static {v0, v1, v2}, Lc/a/a/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "PST"

    const-string v2, "America/Los_Angeles"

    invoke-static {v0, v1, v2}, Lc/a/a/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "PDT"

    const-string v2, "America/Los_Angeles"

    invoke-static {v0, v1, v2}, Lc/a/a/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lc/a/a/f;->c:Ljava/util/Map;

    .line 62
    return-void
.end method

.method public static final a()J
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lc/a/a/f;->b:Lc/a/a/g;

    invoke-interface {v0}, Lc/a/a/g;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final a(Lc/a/a/y;)J
    .locals 2

    .prologue
    .line 178
    if-nez p0, :cond_0

    .line 179
    invoke-static {}, Lc/a/a/f;->a()J

    move-result-wide v0

    .line 181
    :goto_0
    return-wide v0

    :cond_0
    invoke-interface {p0}, Lc/a/a/y;->a()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static final a(Lc/a/a/a;)Lc/a/a/a;
    .locals 0

    .prologue
    .line 284
    if-nez p0, :cond_0

    .line 285
    invoke-static {}, Lc/a/a/b/t;->O()Lc/a/a/b/t;

    move-result-object p0

    .line 287
    :cond_0
    return-object p0
.end method

.method public static final a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/a;
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    if-eqz p0, :cond_2

    .line 221
    invoke-interface {p0}, Lc/a/a/y;->b()Lc/a/a/a;

    move-result-object v0

    .line 225
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 226
    invoke-static {}, Lc/a/a/b/t;->O()Lc/a/a/b/t;

    move-result-object v0

    .line 228
    :cond_1
    return-object v0

    .line 222
    :cond_2
    if-eqz p1, :cond_0

    .line 223
    invoke-interface {p1}, Lc/a/a/y;->b()Lc/a/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static final a(Lc/a/a/u;)Lc/a/a/u;
    .locals 0

    .prologue
    .line 318
    if-nez p0, :cond_0

    .line 319
    invoke-static {}, Lc/a/a/u;->a()Lc/a/a/u;

    move-result-object p0

    .line 321
    :cond_0
    return-object p0
.end method

.method public static final a(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .locals 5

    .prologue
    .line 397
    :try_start_0
    const-class v0, Ljava/text/DateFormatSymbols;

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Locale;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 398
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_0
    return-object v0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc/a/a/i;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    invoke-static {p2}, Lc/a/a/i;->a(Ljava/lang/String;)Lc/a/a/i;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final b(Lc/a/a/y;)Lc/a/a/a;
    .locals 1

    .prologue
    .line 196
    if-nez p0, :cond_1

    .line 197
    invoke-static {}, Lc/a/a/b/t;->O()Lc/a/a/b/t;

    move-result-object v0

    .line 203
    :cond_0
    :goto_0
    return-object v0

    .line 199
    :cond_1
    invoke-interface {p0}, Lc/a/a/y;->b()Lc/a/a/a;

    move-result-object v0

    .line 200
    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Lc/a/a/b/t;->O()Lc/a/a/b/t;

    move-result-object v0

    goto :goto_0
.end method

.method public static final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc/a/a/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    sget-object v0, Lc/a/a/f;->c:Ljava/util/Map;

    return-object v0
.end method
