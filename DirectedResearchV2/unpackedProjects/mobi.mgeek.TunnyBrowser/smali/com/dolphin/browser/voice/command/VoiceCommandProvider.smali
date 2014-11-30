.class public Lcom/dolphin/browser/voice/command/VoiceCommandProvider;
.super Landroid/content/ContentProvider;
.source "VoiceCommandProvider.java"


# static fields
.field private static a:Landroid/content/UriMatcher;


# instance fields
.field private b:Lcom/dolphin/browser/voice/command/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 43
    return-void
.end method

.method private static a()Landroid/content/UriMatcher;
    .locals 4

    .prologue
    .line 135
    sget-object v0, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->a:Landroid/content/UriMatcher;

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Lcom/dolphin/browser/voice/command/b/a;->a()Lcom/dolphin/browser/voice/command/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/b/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->a:Landroid/content/UriMatcher;

    .line 138
    sget-object v1, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->a:Landroid/content/UriMatcher;

    const-string v2, "actions"

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v1, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->a:Landroid/content/UriMatcher;

    const-string v2, "build_in"

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    :cond_0
    sget-object v0, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->a:Landroid/content/UriMatcher;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 146
    const-string v0, "VoiceCommandProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method private b(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 151
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 216
    invoke-static {}, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->a()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 217
    const/4 v0, 0x0

    .line 218
    packed-switch v1, :pswitch_data_0

    .line 223
    invoke-direct {p0, p1}, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->a(Landroid/net/Uri;)V

    .line 226
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->b:Lcom/dolphin/browser/voice/command/q;

    invoke-virtual {v1}, Lcom/dolphin/browser/voice/command/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 231
    :goto_1
    return v0

    .line 220
    :pswitch_0
    const-string v0, "actions"

    goto :goto_0

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->a()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 181
    packed-switch v0, :pswitch_data_0

    .line 187
    invoke-direct {p0, p1}, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->a(Landroid/net/Uri;)V

    .line 190
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 183
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/dolphin-voiceactions"

    goto :goto_0

    .line 185
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/dolphin-buildinurls"

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-static {}, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->a()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 197
    packed-switch v0, :pswitch_data_0

    .line 202
    invoke-direct {p0, p1}, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->a(Landroid/net/Uri;)V

    move-object v0, v1

    .line 205
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->b:Lcom/dolphin/browser/voice/command/q;

    invoke-virtual {v2}, Lcom/dolphin/browser/voice/command/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 208
    invoke-direct {p0, p1}, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->b(Landroid/net/Uri;)V

    .line 209
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 211
    :cond_0
    return-object v1

    .line 199
    :pswitch_0
    const-string v0, "actions"

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/dolphin/browser/voice/command/q;

    invoke-virtual {p0}, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/voice/command/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->b:Lcom/dolphin/browser/voice/command/q;

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 156
    invoke-static {}, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->a()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 158
    packed-switch v0, :pswitch_data_0

    .line 166
    invoke-direct {p0, p1}, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->a(Landroid/net/Uri;)V

    move-object v1, v5

    .line 169
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->b:Lcom/dolphin/browser/voice/command/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/q;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 175
    :cond_0
    return-object v5

    .line 160
    :pswitch_0
    const-string v1, "actions"

    goto :goto_0

    .line 163
    :pswitch_1
    const-string v1, "build_in"

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->a()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 238
    const/4 v0, 0x0

    .line 239
    packed-switch v1, :pswitch_data_0

    .line 244
    invoke-direct {p0, p1}, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->a(Landroid/net/Uri;)V

    .line 247
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/VoiceCommandProvider;->b:Lcom/dolphin/browser/voice/command/q;

    invoke-virtual {v1}, Lcom/dolphin/browser/voice/command/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 252
    :goto_1
    return v0

    .line 241
    :pswitch_0
    const-string v0, "actions"

    goto :goto_0

    .line 252
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
