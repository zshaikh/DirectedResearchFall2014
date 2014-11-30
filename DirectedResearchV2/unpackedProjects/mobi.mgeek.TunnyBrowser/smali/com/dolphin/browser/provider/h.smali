.class final Lcom/dolphin/browser/provider/h;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/dolphin/browser/provider/h;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/dolphin/browser/provider/h;->b:Ljava/lang/String;

    iput p3, p0, Lcom/dolphin/browser/provider/h;->c:I

    iput p4, p0, Lcom/dolphin/browser/provider/h;->d:I

    iput-object p5, p0, Lcom/dolphin/browser/provider/h;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1116
    iget-object v0, p0, Lcom/dolphin/browser/provider/h;->a:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->a:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "visits"

    aput-object v3, v2, v8

    const-string v3, "url = ? or url = ?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v6, p0, Lcom/dolphin/browser/provider/h;->b:Ljava/lang/String;

    aput-object v6, v4, v7

    iget-object v6, p0, Lcom/dolphin/browser/provider/h;->b:Ljava/lang/String;

    invoke-static {v6}, Lcom/dolphin/browser/util/cn;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1120
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1121
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1122
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1123
    iget v6, p0, Lcom/dolphin/browser/provider/h;->c:I

    if-ge v0, v6, :cond_0

    iget v0, p0, Lcom/dolphin/browser/provider/h;->c:I

    .line 1124
    :cond_0
    const-string v6, "visits"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1125
    const-string v0, "pin"

    iget v6, p0, Lcom/dolphin/browser/provider/h;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1126
    const-string v0, "title"

    iget-object v6, p0, Lcom/dolphin/browser/provider/h;->e:Ljava/lang/String;

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const-string v0, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1128
    iget-object v0, p0, Lcom/dolphin/browser/provider/h;->a:Landroid/content/ContentResolver;

    sget-object v2, Lcom/dolphin/browser/provider/Browser;->a:Landroid/net/Uri;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1142
    :goto_0
    if-eqz v1, :cond_1

    .line 1143
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1146
    :cond_1
    return-void

    .line 1131
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/provider/h;->a:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->truncateMostVisited(Landroid/content/ContentResolver;)V

    .line 1132
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1133
    const-string v4, "visits"

    iget v5, p0, Lcom/dolphin/browser/provider/h;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1134
    const-string v4, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1135
    const-string v4, "url"

    iget-object v5, p0, Lcom/dolphin/browser/provider/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const-string v4, "title"

    iget-object v5, p0, Lcom/dolphin/browser/provider/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const-string v4, "created"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1138
    const-string v2, "pin"

    iget v3, p0, Lcom/dolphin/browser/provider/h;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1139
    iget-object v2, p0, Lcom/dolphin/browser/provider/h;->a:Landroid/content/ContentResolver;

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method
