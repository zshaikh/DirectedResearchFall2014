.class public Lorg/codehaus/jackson/map/util/StdDateFormat;
.super Ljava/text/DateFormat;
.source "StdDateFormat.java"


# static fields
.field static final a:[Ljava/lang/String;

.field static final b:Ljava/text/SimpleDateFormat;

.field static final c:Ljava/text/SimpleDateFormat;

.field static final d:Ljava/text/SimpleDateFormat;

.field static final e:Ljava/text/SimpleDateFormat;

.field public static final f:Lorg/codehaus/jackson/map/util/StdDateFormat;


# instance fields
.field transient g:Ljava/text/SimpleDateFormat;

.field transient h:Ljava/text/SimpleDateFormat;

.field transient i:Ljava/text/SimpleDateFormat;

.field transient j:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "yyyy-MM-dd"

    aput-object v2, v0, v1

    sput-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->a:[Ljava/lang/String;

    .line 78
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/codehaus/jackson/map/util/StdDateFormat;->b:Ljava/text/SimpleDateFormat;

    .line 80
    sget-object v1, Lorg/codehaus/jackson/map/util/StdDateFormat;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 81
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/codehaus/jackson/map/util/StdDateFormat;->c:Ljava/text/SimpleDateFormat;

    .line 82
    sget-object v1, Lorg/codehaus/jackson/map/util/StdDateFormat;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 83
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/codehaus/jackson/map/util/StdDateFormat;->d:Ljava/text/SimpleDateFormat;

    .line 84
    sget-object v1, Lorg/codehaus/jackson/map/util/StdDateFormat;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 85
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/codehaus/jackson/map/util/StdDateFormat;->e:Ljava/text/SimpleDateFormat;

    .line 86
    sget-object v1, Lorg/codehaus/jackson/map/util/StdDateFormat;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 92
    new-instance v0, Lorg/codehaus/jackson/map/util/StdDateFormat;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/StdDateFormat;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->f:Lorg/codehaus/jackson/map/util/StdDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    return-void
.end method

.method private static final b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x6

    const/16 v4, 0x2d

    const/16 v3, 0x2b

    const/4 v2, 0x1

    .line 336
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 337
    if-lt v0, v1, :cond_5

    .line 338
    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 339
    if-eq v1, v3, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    move v0, v2

    .line 345
    :goto_0
    return v0

    .line 340
    :cond_1
    const/4 v1, 0x5

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 341
    if-eq v1, v3, :cond_2

    if-ne v1, v4, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    .line 342
    :cond_3
    const/4 v1, 0x3

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 343
    if-eq v0, v3, :cond_4

    if-ne v0, v4, :cond_5

    :cond_4
    move v0, v2

    goto :goto_0

    .line 345
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 7

    .prologue
    const/16 v6, 0x5a

    const/16 v5, 0x3a

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 255
    sub-int v0, v1, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 259
    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->j:Ljava/text/SimpleDateFormat;

    .line 261
    if-nez v0, :cond_a

    .line 262
    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->j:Ljava/text/SimpleDateFormat;

    move-object v1, p1

    .line 322
    :cond_0
    :goto_0
    invoke-virtual {v0, v1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 264
    :cond_1
    if-ne v0, v6, :cond_3

    .line 265
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->i:Ljava/text/SimpleDateFormat;

    .line 266
    if-nez v0, :cond_2

    .line 267
    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->i:Ljava/text/SimpleDateFormat;

    .line 270
    :cond_2
    const/4 v2, 0x4

    sub-int v2, v1, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_a

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    sub-int/2addr v1, v3

    const-string v3, ".000"

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 277
    :cond_3
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/StdDateFormat;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 278
    sub-int v0, v1, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 279
    if-ne v0, v5, :cond_4

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    sub-int v2, v1, v4

    const/4 v3, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 291
    const/16 v2, 0x9

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 292
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x5

    sub-int v0, v1, v0

    const-string v1, ".000"

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 298
    :goto_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->h:Ljava/text/SimpleDateFormat;

    .line 299
    iget-object v2, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->h:Ljava/text/SimpleDateFormat;

    if-nez v2, :cond_0

    .line 300
    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->h:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 284
    :cond_4
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_9

    .line 286
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 308
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    const/16 v2, 0x54

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    .line 311
    const/16 v2, 0x8

    if-gt v1, v2, :cond_7

    .line 312
    const-string v1, ".000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->i:Ljava/text/SimpleDateFormat;

    .line 317
    if-nez v0, :cond_0

    .line 318
    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->i:Ljava/text/SimpleDateFormat;

    goto/16 :goto_0

    :cond_8
    move-object v1, v0

    goto :goto_2

    :cond_9
    move-object v0, p1

    goto/16 :goto_1

    :cond_a
    move-object v1, p1

    goto/16 :goto_0
.end method

.method public a()Lorg/codehaus/jackson/map/util/StdDateFormat;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lorg/codehaus/jackson/map/util/StdDateFormat;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/StdDateFormat;-><init>()V

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 239
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->g:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 328
    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->g:Ljava/text/SimpleDateFormat;

    .line 330
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->g:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/util/StdDateFormat;->a()Lorg/codehaus/jackson/map/util/StdDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->h:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 217
    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->h:Ljava/text/SimpleDateFormat;

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->h:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 10

    .prologue
    const/16 v9, 0x22

    const/4 v8, 0x0

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v8}, Ljava/text/ParsePosition;-><init>(I)V

    .line 169
    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/util/StdDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 170
    if-eqz v2, :cond_0

    .line 171
    return-object v2

    .line 174
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    sget-object v3, Lorg/codehaus/jackson/map/util/StdDateFormat;->a:[Ljava/lang/String;

    array-length v4, v3

    move v5, v8

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 177
    const-string v7, "\", \""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 183
    :cond_2
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    new-instance v3, Ljava/text/ParseException;

    const-string v4, "Can not parse date \"%s\": not compatible with any of standard forms (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v8

    const/4 v0, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v1

    invoke-direct {v3, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 3

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/util/StdDateFormat;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/util/StdDateFormat;->a(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    .line 198
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 199
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 201
    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    .line 203
    :cond_2
    if-gez v0, :cond_3

    .line 204
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/io/NumberInput;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/util/StdDateFormat;->b(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method
