.class public Lorg/acra/CrashReportData;
.super Ljava/util/EnumMap;
.source "CrashReportData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap",
        "<",
        "Lorg/acra/ReportField;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final NONE:I = 0x0

.field private static final PROP_DTD_NAME:Ljava/lang/String; = "http://java.sun.com/dtd/properties.dtd"

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2

.field private static lineSeparator:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x3912d07a70363e98L


# instance fields
.field protected defaults:Lorg/acra/CrashReportData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 516
    const-string v0, "\n"

    sput-object v0, Lorg/acra/CrashReportData;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lorg/acra/ReportField;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/acra/CrashReportData;)V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lorg/acra/ReportField;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 89
    iput-object p1, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    .line 90
    return-void
.end method

.method private dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x20

    .line 93
    .line 94
    if-nez p3, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_5

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_5

    .line 95
    const-string v0, "\\ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    add-int/lit8 v0, v6, 0x1

    .line 99
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 100
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 101
    packed-switch v1, :pswitch_data_0

    .line 115
    :pswitch_0
    const-string v2, "\\#!=:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    if-eqz p3, :cond_1

    if-ne v1, v5, :cond_1

    .line 116
    :cond_0
    const/16 v2, 0x5c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    :cond_1
    if-lt v1, v5, :cond_2

    const/16 v2, 0x7e

    if-gt v1, v2, :cond_2

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :pswitch_1
    const-string v1, "\\t"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 106
    :pswitch_2
    const-string v1, "\\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 109
    :pswitch_3
    const-string v1, "\\f"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 112
    :pswitch_4
    const-string v1, "\\r"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 121
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    const-string v2, "\\u"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v6

    .line 123
    :goto_2
    const/4 v3, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    .line 124
    const-string v3, "0"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 126
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 130
    :cond_4
    return-void

    :cond_5
    move v0, v6

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isEbcdic(Ljava/io/BufferedInputStream;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 269
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 270
    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_2

    :cond_1
    move v0, v2

    .line 282
    :goto_0
    return v0

    .line 273
    :cond_2
    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 274
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 282
    goto :goto_0
.end method

.method private keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/acra/ReportField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    invoke-virtual {p0}, Lorg/acra/CrashReportData;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 786
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getProperty(Lorg/acra/ReportField;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    if-eqz v1, :cond_0

    .line 144
    iget-object v0, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    invoke-virtual {v0, p1}, Lorg/acra/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    return-object v0
.end method

.method public getProperty(Lorg/acra/ReportField;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    if-eqz v1, :cond_0

    .line 164
    iget-object v0, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    invoke-virtual {v0, p1}, Lorg/acra/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_0
    if-nez v0, :cond_1

    move-object v0, p2

    .line 169
    :cond_1
    return-object v0
.end method

.method public list(Ljava/io/PrintStream;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 181
    if-nez p1, :cond_0

    .line 182
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 184
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 185
    invoke-direct {p0}, Lorg/acra/CrashReportData;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 186
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/ReportField;

    .line 188
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    invoke-super {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    iget-object v4, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    .line 192
    :goto_1
    if-nez v1, :cond_1

    .line 193
    invoke-virtual {v4, v0}, Lorg/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 194
    iget-object v4, v4, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    goto :goto_1

    .line 196
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x28

    if-le v0, v4, :cond_2

    .line 197
    const/16 v0, 0x25

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 205
    :cond_3
    return-void
.end method

.method public list(Ljava/io/PrintWriter;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 216
    if-nez p1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 219
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 220
    invoke-direct {p0}, Lorg/acra/CrashReportData;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 221
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/ReportField;

    .line 223
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    invoke-super {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 226
    iget-object v4, p0, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    .line 227
    :goto_1
    if-nez v1, :cond_1

    .line 228
    invoke-virtual {v4, v0}, Lorg/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 229
    iget-object v4, v4, Lorg/acra/CrashReportData;->defaults:Lorg/acra/CrashReportData;

    goto :goto_1

    .line 231
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x28

    if-le v0, v4, :cond_2

    .line 232
    const/16 v0, 0x25

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 240
    :cond_3
    return-void
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    .line 252
    monitor-enter p0

    if-nez p1, :cond_0

    .line 253
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 255
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 256
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 257
    invoke-direct {p0, v0}, Lorg/acra/CrashReportData;->isEbcdic(Ljava/io/BufferedInputStream;)Z

    move-result v1

    .line 258
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 260
    if-nez v1, :cond_1

    .line 261
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "ISO8859-1"

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/acra/CrashReportData;->load(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :goto_0
    monitor-exit p0

    return-void

    .line 263
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1}, Lorg/acra/CrashReportData;->load(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized load(Ljava/io/Reader;)V
    .locals 18

    .prologue
    .line 314
    monitor-enter p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 315
    const/16 v6, 0x28

    :try_start_0
    new-array v6, v6, [C

    .line 316
    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 317
    const/4 v9, 0x1

    .line 318
    new-instance v10, Ljava/io/BufferedReader;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v15, v9

    move v9, v3

    move v3, v15

    move/from16 v16, v7

    move v7, v5

    move/from16 v5, v16

    move/from16 v17, v4

    move v4, v8

    move/from16 v8, v17

    .line 321
    :cond_0
    :goto_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->read()I

    move-result v11

    .line 322
    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 456
    const/4 v3, 0x2

    if-ne v9, v3, :cond_13

    const/4 v3, 0x4

    if-gt v7, v3, :cond_13

    .line 458
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "luni.08"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 324
    :cond_1
    int-to-char v11, v11

    .line 326
    :try_start_1
    array-length v12, v6

    if-ne v5, v12, :cond_2

    .line 327
    array-length v12, v6

    mul-int/lit8 v12, v12, 0x2

    new-array v12, v12, [C

    .line 328
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v6, v13, v12, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v12

    .line 331
    :cond_2
    const/4 v12, 0x2

    if-ne v9, v12, :cond_6

    .line 332
    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    .line 333
    if-ltz v12, :cond_4

    .line 334
    shl-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v12

    .line 335
    add-int/lit8 v7, v7, 0x1

    const/4 v12, 0x4

    if-lt v7, v12, :cond_0

    .line 342
    :cond_3
    const/4 v9, 0x0

    .line 343
    add-int/lit8 v12, v5, 0x1

    int-to-char v13, v8

    aput-char v13, v6, v5

    .line 344
    const/16 v5, 0xa

    if-eq v11, v5, :cond_5

    const/16 v5, 0x85

    if-eq v11, v5, :cond_5

    move v5, v12

    .line 345
    goto :goto_0

    .line 338
    :cond_4
    const/4 v9, 0x4

    if-gt v7, v9, :cond_3

    .line 340
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "luni.09"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    move v5, v12

    .line 348
    :cond_6
    const/4 v12, 0x1

    if-ne v9, v12, :cond_8

    .line 349
    const/4 v9, 0x0

    .line 350
    sparse-switch v11, :sswitch_data_0

    move v3, v11

    .line 449
    :goto_1
    const/4 v11, 0x0

    .line 450
    const/4 v12, 0x4

    if-ne v9, v12, :cond_7

    .line 452
    const/4 v4, 0x0

    move v9, v4

    move v4, v5

    .line 454
    :cond_7
    add-int/lit8 v12, v5, 0x1

    aput-char v3, v6, v5

    move v3, v11

    move v5, v12

    goto :goto_0

    .line 352
    :sswitch_0
    const/4 v9, 0x3

    .line 353
    goto :goto_0

    .line 356
    :sswitch_1
    const/4 v9, 0x5

    .line 357
    goto :goto_0

    .line 359
    :sswitch_2
    const/16 v3, 0x8

    .line 360
    goto :goto_1

    .line 362
    :sswitch_3
    const/16 v3, 0xc

    .line 363
    goto :goto_1

    .line 365
    :sswitch_4
    const/16 v3, 0xa

    .line 366
    goto :goto_1

    .line 368
    :sswitch_5
    const/16 v3, 0xd

    .line 369
    goto :goto_1

    .line 371
    :sswitch_6
    const/16 v3, 0x9

    .line 372
    goto :goto_1

    .line 374
    :sswitch_7
    const/4 v7, 0x2

    .line 375
    const/4 v8, 0x0

    move v9, v7

    move v7, v8

    .line 376
    goto/16 :goto_0

    .line 379
    :cond_8
    sparse-switch v11, :sswitch_data_1

    .line 432
    :cond_9
    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 433
    const/4 v12, 0x3

    if-ne v9, v12, :cond_a

    .line 434
    const/4 v9, 0x5

    .line 437
    :cond_a
    if-eqz v5, :cond_0

    if-eq v5, v4, :cond_0

    const/4 v12, 0x5

    if-eq v9, v12, :cond_0

    .line 440
    const/4 v12, -0x1

    if-ne v4, v12, :cond_11

    .line 441
    const/4 v9, 0x4

    .line 442
    goto/16 :goto_0

    .line 382
    :sswitch_8
    if-eqz v3, :cond_9

    .line 384
    :cond_b
    invoke-virtual {v10}, Ljava/io/BufferedReader;->read()I

    move-result v11

    .line 385
    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 387
    int-to-char v11, v11

    .line 390
    const/16 v12, 0xd

    if-eq v11, v12, :cond_0

    const/16 v12, 0xa

    if-eq v11, v12, :cond_0

    const/16 v12, 0x85

    if-ne v11, v12, :cond_b

    goto/16 :goto_0

    .line 398
    :sswitch_9
    const/4 v11, 0x3

    if-ne v9, v11, :cond_c

    .line 399
    const/4 v9, 0x5

    .line 400
    goto/16 :goto_0

    .line 405
    :cond_c
    :sswitch_a
    const/4 v3, 0x0

    .line 406
    const/4 v9, 0x1

    .line 407
    if-gtz v5, :cond_d

    if-nez v5, :cond_f

    if-nez v4, :cond_f

    .line 408
    :cond_d
    const/4 v11, -0x1

    if-ne v4, v11, :cond_e

    move v4, v5

    .line 411
    :cond_e
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v6, v12, v5}, Ljava/lang/String;-><init>([CII)V

    .line 412
    const-class v5, Lorg/acra/ReportField;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    invoke-virtual {v11, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_f
    const/4 v4, -0x1

    .line 415
    const/4 v5, 0x0

    move v15, v9

    move v9, v3

    move v3, v15

    .line 416
    goto/16 :goto_0

    .line 418
    :sswitch_b
    const/4 v11, 0x4

    if-ne v9, v11, :cond_10

    move v4, v5

    .line 421
    :cond_10
    const/4 v9, 0x1

    .line 422
    goto/16 :goto_0

    .line 425
    :sswitch_c
    const/4 v12, -0x1

    if-ne v4, v12, :cond_9

    .line 426
    const/4 v4, 0x0

    move v9, v4

    move v4, v5

    .line 428
    goto/16 :goto_0

    :cond_11
    move v3, v9

    .line 445
    const/4 v9, 0x5

    if-eq v3, v9, :cond_12

    const/4 v9, 0x3

    if-ne v3, v9, :cond_17

    .line 446
    :cond_12
    const/4 v3, 0x0

    move v9, v3

    move v3, v11

    goto/16 :goto_1

    .line 460
    :cond_13
    const/4 v3, -0x1

    if-ne v4, v3, :cond_16

    if-lez v5, :cond_16

    move v3, v5

    .line 463
    :goto_2
    if-ltz v3, :cond_15

    .line 464
    new-instance v4, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v5}, Ljava/lang/String;-><init>([CII)V

    .line 465
    const-class v5, Lorg/acra/ReportField;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lorg/acra/ReportField;

    .line 466
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 467
    const/4 v4, 0x1

    if-ne v9, v4, :cond_14

    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 470
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    :cond_15
    monitor-exit p0

    return-void

    :cond_16
    move v3, v4

    goto :goto_2

    :cond_17
    move v9, v3

    move v3, v11

    goto/16 :goto_1

    .line 350
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x62 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x75 -> :sswitch_7
        0x85 -> :sswitch_1
    .end sparse-switch

    .line 379
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_9
        0xd -> :sswitch_a
        0x21 -> :sswitch_8
        0x23 -> :sswitch_8
        0x3a -> :sswitch_c
        0x3d -> :sswitch_c
        0x5c -> :sswitch_b
        0x85 -> :sswitch_a
    .end sparse-switch
.end method

.method public save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 497
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/acra/CrashReportData;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setProperty(Lorg/acra/ReportField;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0, p1, p2}, Lorg/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0xc8

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 535
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v0, "ISO8859_1"

    invoke-direct {v3, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 536
    if-eqz p2, :cond_0

    .line 537
    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v3, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 539
    sget-object v0, Lorg/acra/CrashReportData;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 542
    :cond_0
    invoke-virtual {p0}, Lorg/acra/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 543
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/acra/ReportField;

    invoke-virtual {v1}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v1

    .line 544
    const/4 v5, 0x1

    invoke-direct {p0, v2, v1, v5}, Lorg/acra/CrashReportData;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 545
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 546
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/acra/CrashReportData;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 547
    sget-object v0, Lorg/acra/CrashReportData;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 549
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 551
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized store(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 568
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0xc8

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 569
    if-eqz p2, :cond_0

    .line 570
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 572
    sget-object v0, Lorg/acra/CrashReportData;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 575
    :cond_0
    invoke-virtual {p0}, Lorg/acra/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 576
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/acra/ReportField;

    invoke-virtual {v1}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v1

    .line 577
    const/4 v4, 0x1

    invoke-direct {p0, v2, v1, v4}, Lorg/acra/CrashReportData;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 578
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 579
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/acra/CrashReportData;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 580
    sget-object v0, Lorg/acra/CrashReportData;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 582
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 584
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    monitor-exit p0

    return-void
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 700
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lorg/acra/CrashReportData;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method public declared-synchronized storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 727
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 728
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 740
    :cond_1
    :try_start_1
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 749
    :goto_0
    :try_start_2
    new-instance v2, Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-direct {v2, p1, v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 751
    const-string v1, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 753
    const-string v0, "\"?>"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 755
    const-string v0, "<!DOCTYPE properties SYSTEM \""

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 756
    const-string v0, "http://java.sun.com/dtd/properties.dtd"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 757
    const-string v0, "\">"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 759
    const-string v0, "<properties>"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 761
    if-eqz p2, :cond_2

    .line 762
    const-string v0, "<comment>"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 763
    invoke-direct {p0, p2}, Lorg/acra/CrashReportData;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 764
    const-string v0, "</comment>"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 767
    :cond_2
    invoke-virtual {p0}, Lorg/acra/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 768
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/acra/ReportField;

    invoke-virtual {v1}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v1

    .line 769
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 770
    const-string v4, "<entry key=\""

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 771
    invoke-direct {p0, v1}, Lorg/acra/CrashReportData;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 772
    const-string v1, "\">"

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 773
    invoke-direct {p0, v0}, Lorg/acra/CrashReportData;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 774
    const-string v0, "</entry>"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 741
    :catch_0
    move-exception v0

    .line 742
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: encoding name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is illegal, using UTF-8 as default encoding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 743
    const-string v0, "UTF-8"

    goto/16 :goto_0

    .line 744
    :catch_1
    move-exception v0

    .line 745
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported, using UTF-8 as default encoding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 746
    const-string v0, "UTF-8"

    goto/16 :goto_0

    .line 776
    :cond_3
    const-string v0, "</properties>"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 778
    monitor-exit p0

    return-void
.end method
