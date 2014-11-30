.class public Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;
.super Lorg/apache/james/mime4j/field/ParseException;
.source "ParseException.java"


# instance fields
.field protected a:Z

.field public b:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

.field public c:[[I

.field public d:[Ljava/lang/String;

.field protected e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "Cannot parse field"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/ParseException;-><init>(Ljava/lang/String;)V

    .line 168
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->e:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->a:Z

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/ParseException;-><init>(Ljava/lang/String;)V

    .line 168
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->e:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->a:Z

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/ParseException;-><init>(Ljava/lang/Throwable;)V

    .line 168
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->e:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->a:Z

    .line 80
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 178
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 179
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 208
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7e

    if-le v2, v3, :cond_1

    .line 209
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    :goto_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :sswitch_1
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 187
    :sswitch_2
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 190
    :sswitch_3
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 193
    :sswitch_4
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 196
    :sswitch_5
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 199
    :sswitch_6
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 202
    :sswitch_7
    const-string v2, "\\\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 205
    :sswitch_8
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 212
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 217
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x5c -> :sswitch_8
    .end sparse-switch
.end method

.method public getMessage()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 126
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->a:Z

    if-nez v0, :cond_0

    .line 127
    invoke-super {p0}, Lorg/apache/james/mime4j/field/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v6

    move v2, v6

    .line 131
    :goto_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->c:[[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 132
    iget-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->c:[[I

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 133
    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->c:[[I

    aget-object v2, v2, v1

    array-length v2, v2

    :cond_1
    move v3, v6

    .line 135
    :goto_2
    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->c:[[I

    aget-object v4, v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 136
    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->d:[Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->c:[[I

    aget-object v5, v5, v1

    aget v5, v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 138
    :cond_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->c:[[I

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->c:[[I

    aget-object v4, v4, v1

    array-length v4, v4

    sub-int/2addr v4, v7

    aget v3, v3, v4

    if-eqz v3, :cond_3

    .line 139
    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :cond_3
    iget-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_4
    const-string v1, "Encountered \""

    .line 144
    iget-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->b:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v3, v3, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->e:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-object v4, v1

    move v1, v6

    .line 145
    :goto_3
    if-ge v1, v2, :cond_8

    .line 146
    if-eqz v1, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 147
    :cond_5
    iget v5, v3, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->a:I

    if-nez v5, :cond_6

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->d:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->b:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->e:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget v2, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->b:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->e:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget v2, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->c:[[I

    array-length v2, v2

    if-ne v2, v7, :cond_7

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Was expecting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 151
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->d:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    iget-object v3, v3, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->e:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 159
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Was expecting one of:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_8
    move-object v1, v4

    goto/16 :goto_4
.end method
