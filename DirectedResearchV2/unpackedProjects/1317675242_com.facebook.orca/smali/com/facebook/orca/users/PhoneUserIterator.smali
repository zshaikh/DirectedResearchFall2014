.class public Lcom/facebook/orca/users/PhoneUserIterator;
.super Ljava/lang/Object;
.source "PhoneUserIterator.java"


# static fields
.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private c:Landroid/database/Cursor;

.field private d:Lcom/facebook/orca/users/UserBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/orca/users/PhoneUserIterator;->e:[Ljava/lang/String;

    .line 38
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data_version"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data_version"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data9"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/users/PhoneUserIterator;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/facebook/orca/users/PhoneUserIterator;->a:Landroid/content/ContentResolver;

    .line 62
    iput-object p2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->b:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 63
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 82
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->a:Landroid/content/ContentResolver;

    sget-object v2, Lcom/facebook/orca/users/PhoneUserIterator;->e:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 85
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p2, :cond_0

    .line 86
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 91
    return-void
.end method

.method private b(Ljava/lang/String;I)Lcom/facebook/orca/users/UserPhoneNumber;
    .locals 4

    .prologue
    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->b:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/facebook/orca/users/PhoneUserIterator;->b:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1, v0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->b:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v2, Lcom/facebook/orca/users/UserPhoneNumber;

    invoke-direct {v2, v0, v1, p2}, Lcom/facebook/orca/users/UserPhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 220
    :goto_0
    return-object v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 94
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->a:Landroid/content/ContentResolver;

    sget-object v2, Lcom/facebook/orca/users/PhoneUserIterator;->e:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 98
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p2, :cond_0

    .line 99
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 104
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/orca/users/PhoneUserIterator;->f:[Ljava/lang/String;

    const-string v5, "contact_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    .line 68
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 71
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/users/PhoneUserIterator;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/users/PhoneUserIterator;->b(Ljava/lang/String;ILjava/util/List;)V

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact_id IN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/orca/users/PhoneUserIterator;->f:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    .line 79
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 107
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    const-string v0, "_id"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v0, " IN "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-static {p1}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v6

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->a:Landroid/content/ContentResolver;

    sget-object v2, Lcom/facebook/orca/users/PhoneUserIterator;->e:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 117
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/orca/users/PhoneUserIterator;->f:[Ljava/lang/String;

    const-string v5, "contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    .line 128
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    .line 135
    :cond_0
    return-void
.end method

.method public c()Lcom/facebook/orca/users/User;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xa

    const/16 v7, 0x9

    const/16 v6, 0x8

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 140
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 141
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 142
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 143
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 144
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 145
    iget-object v3, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 146
    iget-object v3, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 149
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    if-nez v1, :cond_3

    .line 151
    new-instance v1, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    iput-object v1, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    .line 152
    iget-object v1, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    sget-object v4, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v1, v4, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-object v0, v9

    .line 159
    :goto_0
    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 160
    iget-object v1, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 162
    iget-object v4, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 164
    iget-object v5, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v5}, Lcom/facebook/orca/users/UserBuilder;->h()Lcom/facebook/orca/users/Name;

    move-result-object v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_2

    .line 165
    :cond_1
    new-instance v3, Lcom/facebook/orca/users/Name;

    invoke-direct {v3, v2, v4, v1}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v1, v3}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;

    .line 197
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 207
    :goto_2
    return-object v0

    .line 153
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v1}, Lcom/facebook/orca/users/UserBuilder;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 154
    iget-object v1, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v1}, Lcom/facebook/orca/users/UserBuilder;->p()Lcom/facebook/orca/users/User;

    move-result-object v1

    .line 155
    new-instance v4, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v4}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    iput-object v4, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    .line 156
    iget-object v4, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    sget-object v5, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v4, v5, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-object v0, v1

    goto :goto_0

    .line 168
    :cond_4
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 169
    iget-object v1, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 171
    iget-object v3, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 173
    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 174
    iget-object v3, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserBuilder;->c()Ljava/util/List;

    move-result-object v3

    .line 175
    if-nez v3, :cond_5

    .line 176
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 177
    iget-object v4, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v4, v3}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    .line 179
    :cond_5
    new-instance v4, Lcom/facebook/orca/users/UserEmailAddress;

    invoke-direct {v4, v1, v2}, Lcom/facebook/orca/users/UserEmailAddress;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    :cond_6
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 185
    iget-object v3, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 186
    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/users/PhoneUserIterator;->b(Ljava/lang/String;I)Lcom/facebook/orca/users/UserPhoneNumber;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_2

    .line 189
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserBuilder;->d()Ljava/util/List;

    move-result-object v2

    .line 190
    if-nez v2, :cond_7

    .line 191
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 192
    iget-object v3, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v3, v2}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    .line 194
    :cond_7
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 202
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    if-eqz v0, :cond_9

    .line 203
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->p()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 204
    iput-object v9, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    goto/16 :goto_2

    :cond_9
    move-object v0, v9

    .line 207
    goto/16 :goto_2

    :cond_a
    move-object v0, v9

    goto/16 :goto_0
.end method
