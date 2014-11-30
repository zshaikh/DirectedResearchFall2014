.class public abstract Lcom/facebook/orca/camera/gallery/BaseImageList;
.super Ljava/lang/Object;
.source "BaseImageList.java"

# interfaces
.implements Lcom/facebook/orca/camera/gallery/IImageList;


# static fields
.field private static final i:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Lcom/facebook/orca/camera/gallery/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/camera/gallery/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/orca/camera/gallery/BaseImage;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Landroid/content/ContentResolver;

.field protected c:I

.field protected d:Landroid/net/Uri;

.field protected e:Landroid/database/Cursor;

.field protected f:Ljava/lang/String;

.field protected g:Landroid/net/Uri;

.field protected h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    const-string v0, "(.*)/\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/camera/gallery/BaseImageList;->i:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/facebook/orca/camera/gallery/LruCache;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/facebook/orca/camera/gallery/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->a:Lcom/facebook/orca/camera/gallery/LruCache;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->h:Z

    .line 50
    iput p3, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->c:I

    .line 51
    iput-object p2, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->d:Landroid/net/Uri;

    .line 52
    iput-object p4, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->f:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->b:Landroid/content/ContentResolver;

    .line 54
    invoke-virtual {p0}, Lcom/facebook/orca/camera/gallery/BaseImageList;->e()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->e:Landroid/database/Cursor;

    .line 56
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->e:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 57
    const-string v0, "BaseImageList"

    const-string v1, "createCursor returns null."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->a:Lcom/facebook/orca/camera/gallery/LruCache;

    invoke-virtual {v0}, Lcom/facebook/orca/camera/gallery/LruCache;->a()V

    .line 64
    return-void
.end method

.method private static b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/facebook/orca/camera/gallery/BaseImageList;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private c()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->e:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    .line 114
    :goto_0
    return-object v0

    .line 110
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->h:Z

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->h:Z

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->e:Landroid/database/Cursor;

    monitor-exit p0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c(Landroid/net/Uri;)Z
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->d:Landroid/net/Uri;

    .line 180
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/camera/Util;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/camera/Util;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/camera/Util;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/orca/camera/gallery/BaseImageList;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/camera/Util;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Landroid/database/Cursor;)J
.end method

.method public a(J)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->d:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 87
    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    const-string v0, "BaseImageList"

    const-string v1, "id mismatch"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->d:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->d:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)Lcom/facebook/orca/camera/gallery/IImage;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->a:Lcom/facebook/orca/camera/gallery/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/camera/gallery/LruCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/gallery/BaseImage;

    .line 120
    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/facebook/orca/camera/gallery/BaseImageList;->c()Landroid/database/Cursor;

    move-result-object v0

    .line 122
    if-nez v0, :cond_1

    move-object v0, v2

    .line 130
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :cond_1
    monitor-enter p0

    .line 124
    :try_start_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/facebook/orca/camera/gallery/BaseImageList;->b(Landroid/database/Cursor;)Lcom/facebook/orca/camera/gallery/BaseImage;

    move-result-object v0

    .line 127
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->a:Lcom/facebook/orca/camera/gallery/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/camera/gallery/LruCache;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v0, v2

    .line 124
    goto :goto_1
.end method

.method public a(Landroid/net/Uri;)Lcom/facebook/orca/camera/gallery/IImage;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 187
    invoke-direct {p0, p1}, Lcom/facebook/orca/camera/gallery/BaseImageList;->c(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v6

    .line 211
    :goto_0
    return-object v0

    .line 191
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 197
    invoke-direct {p0}, Lcom/facebook/orca/camera/gallery/BaseImageList;->c()Landroid/database/Cursor;

    move-result-object v2

    .line 198
    if-nez v2, :cond_1

    move-object v0, v6

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    const-string v1, "BaseImageList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to get id in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 194
    goto :goto_0

    .line 199
    :cond_1
    monitor-enter p0

    .line 200
    const/4 v3, -0x1

    :try_start_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 201
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 202
    invoke-virtual {p0, v2}, Lcom/facebook/orca/camera/gallery/BaseImageList;->a(Landroid/database/Cursor;)J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_3

    .line 203
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->a:Lcom/facebook/orca/camera/gallery/LruCache;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/camera/gallery/LruCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/gallery/BaseImage;

    .line 204
    if-nez v0, :cond_2

    .line 205
    invoke-virtual {p0, v2}, Lcom/facebook/orca/camera/gallery/BaseImageList;->b(Landroid/database/Cursor;)Lcom/facebook/orca/camera/gallery/BaseImage;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->a:Lcom/facebook/orca/camera/gallery/LruCache;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/camera/gallery/LruCache;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 201
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 211
    :cond_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v6

    goto :goto_0
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/camera/gallery/BaseImageList;->g()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    iput-object v3, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->b:Landroid/content/ContentResolver;

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->e:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 76
    iput-object v3, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->e:Landroid/database/Cursor;

    .line 78
    :cond_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 71
    const-string v1, "BaseImageList"

    const-string v2, "Caught exception while deactivating cursor."

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/facebook/orca/camera/gallery/BaseImageList;->c()Landroid/database/Cursor;

    move-result-object v0

    .line 97
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    .line 98
    :cond_0
    monitor-enter p0

    .line 99
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract b(Landroid/database/Cursor;)Lcom/facebook/orca/camera/gallery/BaseImage;
.end method

.method protected abstract e()Landroid/database/Cursor;
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/facebook/orca/camera/gallery/BaseImageList;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->e:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->h:Z

    goto :goto_0
.end method

.method protected h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    iget v0, p0, Lcom/facebook/orca/camera/gallery/BaseImageList;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, " ASC"

    .line 232
    :goto_0
    const-string v1, "case ifnull(datetaken,0) when 0 then date_modified*1000 else datetaken end"

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", _id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 225
    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method
