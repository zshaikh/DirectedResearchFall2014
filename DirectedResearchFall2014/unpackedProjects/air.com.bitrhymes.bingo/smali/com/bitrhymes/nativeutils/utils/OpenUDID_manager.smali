.class public Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;
.super Ljava/lang/Object;
.source "OpenUDID_manager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager$ValueComparator;
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field private static OpenUDID:Ljava/lang/String; = null

.field public static final PREFS_NAME:Ljava/lang/String; = "bitrhymes_openudid_prefs"

.field public static final PREF_KEY:Ljava/lang/String; = "openudid"

.field public static final TAG:Ljava/lang/String; = "OpenUDID"

.field private static mInitialized:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMatchingIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mPreferences:Landroid/content/SharedPreferences;

.field private final mRandom:Ljava/util/Random;

.field private mReceivedOpenUDIDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    sput-object v0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "bitrhymes_openudid_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mPreferences:Landroid/content/SharedPreferences;

    .line 45
    iput-object p1, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mRandom:Ljava/util/Random;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    return-object v0
.end method

.method private generateOpenUDID()V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    const-string v10, "OpenUDID"

    .line 99
    const-string v7, "OpenUDID"

    const-string v7, "Generating openUDID"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v7, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x28

    if-eq v7, v8, :cond_1

    .line 106
    :cond_0
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 107
    .local v3, "random":Ljava/security/SecureRandom;
    new-instance v7, Ljava/math/BigInteger;

    const/16 v8, 0x40

    invoke-direct {v7, v8, v3}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    .line 113
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 114
    .local v4, "seconds":J
    const-wide/16 v7, 0x3e8

    div-long v1, v4, v7

    .line 115
    .local v1, "microseconds":J
    const-string v7, "OpenUDID"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "microseconds:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "tempODID":Ljava/lang/String;
    invoke-static {v6}, Lcom/bitrhymes/nativeutils/utils/Utils;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->OpenUDID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v1    # "microseconds":J
    .end local v3    # "random":Ljava/security/SecureRandom;
    .end local v4    # "seconds":J
    .end local v6    # "tempODID":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 120
    .restart local v3    # "random":Ljava/security/SecureRandom;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "OpenUDID"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error in creating sha1:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMostFrequentOpenUDID()V
    .locals 3

    .prologue
    .line 154
    iget-object v1, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager$ValueComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager$ValueComparator;-><init>(Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager$ValueComparator;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 157
    .local v0, "sorted_OpenUDIDS":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 159
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;
    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    .line 161
    .end local v0    # "sorted_OpenUDIDS":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method public static getOpenUDID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    sget-boolean v0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 173
    const-string v0, "OpenUDID"

    const-string v1, "Initialisation isn\'t done"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    sget-object v0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    return-object v0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 183
    sget-boolean v0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mInitialized:Z

    return v0
.end method

.method private startService()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "OpenUDID"

    .line 132
    iget-object v2, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 134
    const-string v2, "OpenUDID"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "Trying service "

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 137
    .local v1, "servInfo":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v0, "i":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 139
    iget-object v2, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, p0, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 140
    iget-object v2, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 151
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "servInfo":Landroid/content/pm/ServiceInfo;
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->getMostFrequentOpenUDID()V

    .line 144
    sget-object v2, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->generateOpenUDID()V

    .line 147
    :cond_1
    const-string v2, "OpenUDID"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OpenUDID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->storeOpenUDID()V

    .line 149
    sput-boolean v6, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mInitialized:Z

    goto :goto_0
.end method

.method private storeOpenUDID()V
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v1, "openudid"

    sget-object v2, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    return-void
.end method

.method public static sync(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const-string v6, "OpenUDID: "

    const-string v5, "OpenUDID"

    .line 194
    new-instance v0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;

    invoke-direct {v0, p0}, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, "manager":Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;
    iget-object v1, v0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "openudid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    .line 198
    sget-object v1, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_1

    .line 216
    :cond_0
    invoke-direct {v0}, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->generateOpenUDID()V

    .line 218
    const-string v1, "OpenUDID"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OpenUDID: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {v0}, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->storeOpenUDID()V

    .line 221
    sput-boolean v4, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mInitialized:Z

    .line 228
    :goto_0
    return-void

    .line 225
    :cond_1
    const-string v1, "OpenUDID"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OpenUDID: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sput-boolean v4, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mInitialized:Z

    goto :goto_0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const-string v7, "OpenUDID"

    .line 55
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 56
    .local v1, "data":Landroid/os/Parcel;
    iget-object v4, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 58
    .local v3, "reply":Landroid/os/Parcel;
    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p2, v4, v5, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 59
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 62
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "_openUDID":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 65
    const-string v4, "OpenUDID"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Received "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v4, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    iget-object v5, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    iget-object v4, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v0    # "_openUDID":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    :goto_1
    iget-object v4, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 81
    return-void

    .line 70
    .restart local v0    # "_openUDID":Ljava/lang/String;
    .restart local v1    # "data":Landroid/os/Parcel;
    .restart local v3    # "reply":Landroid/os/Parcel;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/bitrhymes/nativeutils/utils/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 74
    .end local v0    # "_openUDID":Ljava/lang/String;
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 76
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "OpenUDID"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RemoteException: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 85
    return-void
.end method
