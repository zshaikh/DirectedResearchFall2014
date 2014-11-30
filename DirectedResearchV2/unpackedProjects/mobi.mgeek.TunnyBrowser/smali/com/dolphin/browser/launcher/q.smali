.class Lcom/dolphin/browser/launcher/q;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataManager.java"


# instance fields
.field private a:J

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 674
    const-string v0, "launcher2.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 664
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolphin/browser/launcher/q;->a:J

    .line 675
    iput-object p1, p0, Lcom/dolphin/browser/launcher/q;->e:Landroid/content/Context;

    .line 676
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/q;J)J
    .locals 0

    .prologue
    .line 662
    iput-wide p1, p0, Lcom/dolphin/browser/launcher/q;->a:J

    return-wide p1
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/q;Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2

    .prologue
    .line 662
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/q;->b(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 685
    const-string v0, "CREATE TABLE favorites2 (_id INTEGER PRIMARY KEY,itemType INTEGER,flags INTEGER,container INTEGER,_index INTEGER,extras TEXT,create_time INTEGER,clicks INTEGER,last_click_time INTEGER,title TEXT,url TEXT,iconType INTEGER,iconResource TEXT,icon BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 702
    iput-boolean v2, p0, Lcom/dolphin/browser/launcher/q;->b:Z

    .line 703
    iget-object v0, p0, Lcom/dolphin/browser/launcher/q;->e:Landroid/content/Context;

    const-string v1, "launcher.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iput-boolean v2, p0, Lcom/dolphin/browser/launcher/q;->d:Z

    .line 706
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/q;Lcom/dolphin/browser/util/bq;Z)V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/launcher/q;->a(Lcom/dolphin/browser/util/bq;Z)V

    return-void
.end method

.method private a(Lcom/dolphin/browser/util/bq;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/util/bq",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 709
    const-string v2, "DataManager"

    const-string v3, "saveData"

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 713
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 714
    if-eqz p2, :cond_0

    .line 715
    const-string v2, "favorites2"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 717
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 718
    const-wide/16 v2, 0x0

    .line 719
    invoke-virtual {p1}, Lcom/dolphin/browser/util/bq;->a()I

    move-result v6

    move v4, v0

    .line 720
    :goto_0
    if-ge v4, v6, :cond_2

    .line 721
    invoke-virtual {p1, v4}, Lcom/dolphin/browser/util/bq;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 722
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 723
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bi;->g()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-lez v7, :cond_1

    .line 724
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bi;->g()J

    move-result-wide v2

    .line 726
    :cond_1
    invoke-virtual {v0, v5}, Lcom/dolphin/browser/launcher/bi;->a(Landroid/content/ContentValues;)V

    .line 727
    const-string v0, "favorites2"

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 720
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 729
    :cond_2
    iput-wide v2, p0, Lcom/dolphin/browser/launcher/q;->a:J

    .line 730
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/q;->b:Z

    .line 731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/q;->c:Z

    .line 732
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    if-eqz v1, :cond_3

    .line 737
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 740
    :cond_3
    :goto_1
    return-void

    .line 733
    :catch_0
    move-exception v0

    .line 734
    :try_start_1
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    if-eqz v1, :cond_3

    .line 737
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 736
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 737
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4
    throw v0
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/q;)Z
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/q;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/q;Z)Z
    .locals 0

    .prologue
    .line 662
    iput-boolean p1, p0, Lcom/dolphin/browser/launcher/q;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/launcher/q;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 1

    .prologue
    .line 662
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/q;->c(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    return v0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 777
    const-string v0, "SELECT MAX(_id) FROM favorites2"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 782
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 783
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 785
    :goto_0
    if-eqz v4, :cond_0

    .line 786
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 789
    :cond_0
    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 790
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: could not query max id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 793
    :cond_1
    return-wide v0

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/launcher/q;)Z
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/q;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/launcher/q;Z)Z
    .locals 0

    .prologue
    .line 662
    iput-boolean p1, p0, Lcom/dolphin/browser/launcher/q;->c:Z

    return p1
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 797
    const-string v1, "SELECT MAX(_index) FROM favorites2"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 801
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 802
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 804
    :cond_0
    if-eqz v1, :cond_1

    .line 805
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 808
    :cond_1
    return v0
.end method

.method static synthetic c(Lcom/dolphin/browser/launcher/q;)Z
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/q;->d:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 858
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 859
    const-string v1, "favorites2"

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 863
    :goto_0
    return v0

    .line 860
    :catch_0
    move-exception v0

    .line 861
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 863
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()J
    .locals 4

    .prologue
    .line 763
    monitor-enter p0

    .line 764
    :try_start_0
    iget-wide v0, p0, Lcom/dolphin/browser/launcher/q;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/q;->b(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/launcher/q;->a:J

    .line 768
    :cond_0
    iget-wide v0, p0, Lcom/dolphin/browser/launcher/q;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 769
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 773
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 771
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/dolphin/browser/launcher/q;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dolphin/browser/launcher/q;->a:J

    .line 772
    iget-wide v0, p0, Lcom/dolphin/browser/launcher/q;->a:J

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide v0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 812
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    const-string v0, "DataManager"

    const-string v2, "saveUpdate, updated: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 819
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 820
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 821
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 822
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 823
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 824
    invoke-virtual {v0, v2}, Lcom/dolphin/browser/launcher/bi;->b(Landroid/content/ContentValues;)V

    .line 825
    const-string v4, "favorites2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bi;->g()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 828
    :catch_0
    move-exception v0

    .line 829
    :try_start_1
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    if-eqz v1, :cond_0

    .line 832
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 827
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 831
    if-eqz v1, :cond_0

    .line 832
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 831
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 832
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v0
.end method

.method public a(J)Z
    .locals 4

    .prologue
    .line 868
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 869
    const-string v1, "favorites2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    const/4 v0, 0x1

    .line 874
    :goto_0
    return v0

    .line 871
    :catch_0
    move-exception v0

    .line 872
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 874
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/launcher/bi;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 839
    :try_start_0
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/bi;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    :goto_0
    return v0

    .line 842
    :cond_0
    iget-wide v1, p1, Lcom/dolphin/browser/launcher/bi;->n:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 843
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/dolphin/browser/launcher/bi;->n:J

    .line 845
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 846
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 847
    invoke-virtual {p1, v2}, Lcom/dolphin/browser/launcher/bi;->a(Landroid/content/ContentValues;)V

    .line 848
    const-string v3, "favorites2"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    const/4 v0, 0x1

    goto :goto_0

    .line 850
    :catch_0
    move-exception v1

    .line 851
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 680
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/dolphin/browser/launcher/q;->a:J

    .line 681
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/q;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 682
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 757
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/launcher/q;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 758
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 744
    const-string v0, "DataManager"

    const-string v1, "onUpgrade from %d to %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 745
    if-ne v5, p2, :cond_0

    .line 746
    iput-boolean v5, p0, Lcom/dolphin/browser/launcher/q;->c:Z

    .line 747
    iput-boolean v5, p0, Lcom/dolphin/browser/launcher/q;->b:Z

    .line 753
    :goto_0
    return-void

    .line 749
    :cond_0
    const-string v0, "DataManager"

    const-string v1, "Destroying all old data."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string v0, "DROP TABLE IF EXISTS favorites2"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/q;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
