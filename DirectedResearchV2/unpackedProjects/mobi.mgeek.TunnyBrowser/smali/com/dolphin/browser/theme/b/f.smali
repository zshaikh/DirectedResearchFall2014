.class public Lcom/dolphin/browser/theme/b/f;
.super Ljava/lang/Object;
.source "ThemeParser.java"


# static fields
.field private static final a:Ljava/io/FilenameFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/dolphin/browser/theme/b/g;

    invoke-direct {v0}, Lcom/dolphin/browser/theme/b/g;-><init>()V

    sput-object v0, Lcom/dolphin/browser/theme/b/f;->a:Ljava/io/FilenameFilter;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/dolphin/browser/theme/data/a;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 79
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 83
    :cond_1
    sget-object v2, Lcom/dolphin/browser/theme/b/f;->a:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 84
    if-eqz v2, :cond_2

    array-length v3, v2

    if-eqz v3, :cond_2

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 85
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad theme with path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bad format."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_3
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 93
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 94
    invoke-static {v1, p0}, Lcom/dolphin/browser/theme/b/f;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/dolphin/browser/theme/data/a;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 103
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 97
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 98
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 99
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 100
    :catch_2
    move-exception v1

    move-object v2, v0

    .line 101
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 103
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 100
    :catch_3
    move-exception v1

    goto :goto_3

    .line 98
    :catch_4
    move-exception v1

    goto :goto_2

    .line 96
    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public static final a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/dolphin/browser/theme/data/a;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dolphin/browser/theme/b/f;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/dolphin/browser/theme/data/a;

    move-result-object v0

    return-object v0
.end method

.method private static final a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/dolphin/browser/theme/data/a;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v1, 0x0

    .line 117
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v10, :cond_1

    if-ne v0, v11, :cond_0

    .line 120
    :cond_1
    if-eq v0, v10, :cond_2

    .line 121
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v2, "theme_config"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 208
    :cond_3
    :goto_0
    return-object v1

    .line 129
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 135
    const/4 v0, 0x0

    move-object v3, v1

    move-object v4, v1

    move v5, v0

    move-object v2, v1

    move-object v0, v1

    .line 139
    :cond_5
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v11, :cond_c

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ge v6, v7, :cond_6

    const/4 v9, 0x3

    if-eq v8, v9, :cond_c

    .line 140
    :cond_6
    if-ne v8, v10, :cond_7

    .line 141
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 143
    :cond_7
    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    .line 144
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 147
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 148
    if-ge v5, v6, :cond_9

    .line 149
    if-nez v4, :cond_8

    .line 150
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 152
    :try_start_0
    invoke-virtual {v4, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    move-object v3, v4

    :goto_2
    move-object v4, v3

    move v5, v6

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    .line 185
    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "failed to put text to a json object."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 160
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 162
    :try_start_1
    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    move-object v3, v4

    .line 166
    goto :goto_2

    .line 164
    :catch_1
    move-exception v0

    .line 165
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "failed to put json object to hold an inner object."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_9
    if-le v5, v6, :cond_a

    move-object v0, v1

    move-object v3, v4

    .line 170
    goto :goto_2

    .line 173
    :cond_a
    if-eqz v3, :cond_b

    .line 174
    :try_start_2
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_3
    move-object v0, v3

    move-object v3, v4

    .line 180
    goto :goto_2

    .line 176
    :cond_b
    invoke-virtual {v4, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 178
    :catch_2
    move-exception v0

    .line 179
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "failed to put text to a json object."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_c
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->F()Lcom/dolphin/browser/theme/b/h;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_d

    .line 193
    invoke-interface {v0, v4, p1}, Lcom/dolphin/browser/theme/b/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/dolphin/browser/theme/data/a;

    move-result-object v1

    .line 194
    if-nez v1, :cond_3

    .line 199
    :cond_d
    const-string v0, "compatibility"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 201
    invoke-static {v4, p1}, Lcom/dolphin/browser/theme/data/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/dolphin/browser/theme/data/s;

    move-result-object v0

    :goto_4
    move-object v1, v0

    .line 208
    goto/16 :goto_0

    .line 202
    :cond_e
    const-string v0, "status"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 203
    invoke-static {v4, p1}, Lcom/dolphin/browser/theme/data/m;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/dolphin/browser/theme/data/m;

    move-result-object v0

    goto :goto_4

    .line 205
    :cond_f
    invoke-static {v4, p1}, Lcom/dolphin/browser/theme/data/u;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/dolphin/browser/theme/data/u;

    move-result-object v0

    goto :goto_4
.end method

.method public static final a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    if-nez p0, :cond_1

    .line 230
    const/4 v0, 0x0

    .line 242
    :cond_0
    return-object v0

    .line 232
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 234
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 235
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 236
    invoke-static {v3}, Lcom/dolphin/browser/theme/data/q;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/theme/data/q;

    move-result-object v3

    .line 237
    if-nez v3, :cond_2

    .line 234
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static final b(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    if-nez p0, :cond_1

    .line 247
    const/4 v0, 0x0

    .line 259
    :cond_0
    return-object v0

    .line 249
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 252
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 253
    invoke-static {v3}, Lcom/dolphin/browser/theme/data/r;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/theme/data/r;

    move-result-object v3

    .line 254
    if-nez v3, :cond_2

    .line 251
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
