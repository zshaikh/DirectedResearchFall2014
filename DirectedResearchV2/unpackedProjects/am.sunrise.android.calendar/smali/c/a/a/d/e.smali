.class Lc/a/a/d/e;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lc/a/a/d/s;
.implements Lc/a/a/d/w;


# instance fields
.field private final a:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .prologue
    .line 1207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1208
    iput-char p1, p0, Lc/a/a/d/e;->a:C

    .line 1209
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1212
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lc/a/a/d/t;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 1240
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 1241
    xor-int/lit8 v0, p3, -0x1

    .line 1259
    :goto_0
    return v0

    .line 1244
    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1245
    iget-char v1, p0, Lc/a/a/d/e;->a:C

    .line 1247
    if-eq v0, v1, :cond_1

    .line 1248
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 1249
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 1250
    if-eq v0, v1, :cond_1

    .line 1251
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 1252
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 1253
    if-eq v0, v1, :cond_1

    .line 1254
    xor-int/lit8 v0, p3, -0x1

    goto :goto_0

    .line 1259
    :cond_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/StringBuffer;JLc/a/a/a;ILc/a/a/i;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 1218
    iget-char v0, p0, Lc/a/a/d/e;->a:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1219
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1236
    const/4 v0, 0x1

    return v0
.end method
