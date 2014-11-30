.class Lc/a/a/d/l;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lc/a/a/d/s;
.implements Lc/a/a/d/w;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1271
    iput-object p1, p0, Lc/a/a/d/l;->a:Ljava/lang/String;

    .line 1272
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lc/a/a/d/l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public a(Lc/a/a/d/t;Ljava/lang/String;I)I
    .locals 6

    .prologue
    .line 1303
    const/4 v1, 0x1

    iget-object v3, p0, Lc/a/a/d/l;->a:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v0, p0, Lc/a/a/d/l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lc/a/a/d/l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    .line 1306
    :goto_0
    return v0

    :cond_0
    xor-int/lit8 v0, p3, -0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/StringBuffer;JLc/a/a/a;ILc/a/a/i;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lc/a/a/d/l;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1282
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lc/a/a/d/l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method
