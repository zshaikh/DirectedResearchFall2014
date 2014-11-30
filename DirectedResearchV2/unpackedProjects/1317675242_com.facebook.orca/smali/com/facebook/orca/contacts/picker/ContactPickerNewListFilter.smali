.class public Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;
.super Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;
.source "ContactPickerNewListFilter.java"


# static fields
.field private static final e:Lcom/facebook/orca/prefs/PrefKey;

.field private static final f:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/facebook/orca/users/FacebookUserIterator;

.field private final b:Lcom/facebook/orca/users/PhoneUserIterator;

.field private final c:Landroid/database/sqlite/SQLiteDatabase;

.field private final d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const-string v0, "messenger_sms_android"

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->d(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->e:Lcom/facebook/orca/prefs/PrefKey;

    .line 186
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cluster_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "user_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/users/FacebookUserIterator;Lcom/facebook/orca/users/PhoneUserIterator;Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->a:Lcom/facebook/orca/users/FacebookUserIterator;

    .line 59
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->b:Lcom/facebook/orca/users/PhoneUserIterator;

    .line 60
    iput-object p3, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    iput-object p4, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 62
    return-void
.end method

.method private a(Ljava/util/Set;)Lcom/google/common/collect/Multimap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;)",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/orca/users/UserKey;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    const-string v0, "cluster_id IN ( "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v0, "SELECT DISTINCT cluster_id FROM clusters "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v0, "WHERE user_key IN "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-static {p1}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 203
    const-string v2, "clusters"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 205
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->j()Lcom/google/common/collect/HashMultimap;

    move-result-object v8

    .line 206
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->f:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 208
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 210
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/users/UserKey;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    .line 211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1, v2}, Lcom/google/common/collect/Multimap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 216
    return-object v8
.end method

.method private a(Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/users/User;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/UserCluster;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->a(Ljava/util/Set;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    .line 165
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v1

    .line 166
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v2

    .line 167
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->a(Ljava/util/Map;Lcom/google/common/collect/Multimap;Ljava/util/Map;Ljava/util/Map;)V

    .line 171
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-direct {p0, v1, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 177
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    invoke-direct {p0, v2, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->b(Ljava/util/Map;Ljava/util/Map;)V

    .line 182
    :cond_1
    new-instance v0, Lcom/facebook/orca/users/UserClusterer;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserClusterer;-><init>()V

    .line 183
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserClusterer;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->a:Lcom/facebook/orca/users/FacebookUserIterator;

    const/16 v1, 0x1e

    invoke-virtual {v0, p1, v1}, Lcom/facebook/orca/users/FacebookUserIterator;->a(Ljava/lang/String;I)V

    .line 114
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->a:Lcom/facebook/orca/users/FacebookUserIterator;

    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->b()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->a:Lcom/facebook/orca/users/FacebookUserIterator;

    invoke-virtual {v1}, Lcom/facebook/orca/users/FacebookUserIterator;->c()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->a:Lcom/facebook/orca/users/FacebookUserIterator;

    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()V

    .line 120
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/UserCluster;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter$1;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 308
    return-void
.end method

.method private a(Ljava/util/Map;Lcom/google/common/collect/Multimap;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/orca/users/UserKey;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    invoke-interface {p2}, Lcom/google/common/collect/Multimap;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 236
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 237
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 238
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserKey;

    .line 239
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 240
    if-nez v0, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v4, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v4, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v4, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v4, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p4, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 249
    :cond_3
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->a:Lcom/facebook/orca/users/FacebookUserIterator;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/FacebookUserIterator;->a(Ljava/util/Collection;)V

    .line 264
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->a:Lcom/facebook/orca/users/FacebookUserIterator;

    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->b()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->a:Lcom/facebook/orca/users/FacebookUserIterator;

    invoke-virtual {v1}, Lcom/facebook/orca/users/FacebookUserIterator;->c()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->a:Lcom/facebook/orca/users/FacebookUserIterator;

    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()V

    .line 270
    return-void
.end method

.method private a(Lcom/facebook/orca/users/UserCluster;)Z
    .locals 3

    .prologue
    .line 321
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserCluster;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserIdentifier;

    .line 322
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserIdentifier;->f()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->PHONE:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserIdentifier;->f()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->FBID:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v1, v2, :cond_0

    .line 324
    :cond_1
    const/4 v0, 0x1

    .line 327
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/UserCluster;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 312
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserCluster;

    .line 313
    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->a(Lcom/facebook/orca/users/UserCluster;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    new-instance v3, Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    invoke-direct {v3, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerRow;-><init>(Lcom/facebook/orca/users/UserCluster;)V

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->e:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const-string v0, "orca:ContactPickerNewListFilter"

    const-string v1, "GK is off"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->b:Lcom/facebook/orca/users/PhoneUserIterator;

    const/16 v1, 0x1e

    invoke-virtual {v0, p1, v1}, Lcom/facebook/orca/users/PhoneUserIterator;->a(Ljava/lang/String;I)V

    .line 138
    :cond_1
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->b:Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {v0}, Lcom/facebook/orca/users/PhoneUserIterator;->c()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 145
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->b:Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {v1}, Lcom/facebook/orca/users/PhoneUserIterator;->b()V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->b:Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {v0}, Lcom/facebook/orca/users/PhoneUserIterator;->b()V

    goto :goto_0
.end method

.method private b(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->b:Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/PhoneUserIterator;->a(Ljava/util/Collection;)V

    .line 285
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->b:Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {v0}, Lcom/facebook/orca/users/PhoneUserIterator;->c()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->b:Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {v1}, Lcom/facebook/orca/users/PhoneUserIterator;->b()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->b:Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {v0}, Lcom/facebook/orca/users/PhoneUserIterator;->b()V

    .line 291
    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    .prologue
    .line 66
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/Tracer;->a(J)V

    .line 67
    const-string v0, "ContactPickerDbListFilter.Filtering"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 68
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 70
    if-eqz p1, :cond_0

    .line 71
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v2

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-direct {p0, v3, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    invoke-direct {p0, v3, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 76
    invoke-direct {p0, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 78
    invoke-direct {p0, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->a(Ljava/util/List;)V

    .line 79
    invoke-direct {p0, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->b(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;->a(Ljava/lang/String;)Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    move-result-object v3

    .line 83
    new-instance v4, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;)V

    .line 85
    iput-object v4, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 86
    invoke-virtual {v4}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;->a()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 97
    const-string v0, "orca:ContactPickerNewListFilter"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V

    .line 99
    :goto_1
    return-object v1

    .line 88
    :cond_0
    :try_start_1
    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;->c:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 89
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v2

    .line 92
    :try_start_2
    const-string v3, "orca:ContactPickerNewListFilter"

    const-string v4, "Exception during filtering"

    invoke-static {v3, v4, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;->c:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$FilterResult;

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 94
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 97
    const-string v0, "orca:ContactPickerNewListFilter"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 97
    const-string v0, "orca:ContactPickerNewListFilter"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V

    .line 98
    throw v1
.end method
