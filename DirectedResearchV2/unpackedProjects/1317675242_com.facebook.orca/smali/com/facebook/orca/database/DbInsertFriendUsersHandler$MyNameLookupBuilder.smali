.class public Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;
.super Lcom/facebook/orca/common/names/NameLookupBuilder;
.source "DbInsertFriendUsersHandler.java"


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/common/names/NameSplitter;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p2}, Lcom/facebook/orca/common/names/NameLookupBuilder;-><init>(Lcom/facebook/orca/common/names/NameSplitter;)V

    .line 111
    iput-object p1, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 112
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 116
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 117
    const-string v1, "fbid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "name_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    const-string v1, "normalized_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "facebook_users_name_lookup"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 121
    return-void
.end method

.method protected a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
