.class Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;
.super Ljava/lang/Object;
.source "OrcaInjector.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<",
        "Lcom/facebook/orca/protocol/WebServiceHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1633
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1633
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/protocol/WebServiceHandler;
    .locals 34

    .prologue
    .line 1637
    new-instance v1, Lcom/facebook/orca/protocol/WebServiceHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object v2, v0

    const-class v3, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object v3, v0

    const-class v4, Lcom/facebook/orca/protocol/base/BatchRunner;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object v4, v0

    const-class v5, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object v5, v0

    const-class v6, Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v5, v6}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/auth/AuthenticationManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object v6, v0

    const-class v7, Lcom/facebook/orca/protocol/methods/AuthenticateMethod;

    invoke-virtual {v6, v7}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/protocol/methods/AuthenticateMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object v7, v0

    const-class v8, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;

    invoke-virtual {v7, v8}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object v8, v0

    const-class v9, Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;

    invoke-virtual {v8, v9}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object v9, v0

    const-class v10, Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;

    invoke-virtual {v9, v10}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object v10, v0

    const-class v11, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    invoke-virtual {v10, v11}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object v11, v0

    const-class v12, Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

    invoke-virtual {v11, v12}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object v12, v0

    const-class v13, Lcom/facebook/orca/protocol/methods/SendMessageMethod;

    invoke-virtual {v12, v13}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/orca/protocol/methods/SendMessageMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object v13, v0

    const-class v14, Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;

    invoke-virtual {v13, v14}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object v14, v0

    const-class v15, Lcom/facebook/orca/protocol/methods/FetchMessageMethod;

    invoke-virtual {v14, v15}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/orca/protocol/methods/FetchMessageMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object v15, v0

    const-class v16, Lcom/facebook/orca/protocol/methods/AddMembersMethod;

    invoke-virtual/range {v15 .. v16}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/facebook/orca/protocol/methods/AddMembersMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object/from16 v16, v0

    const-class v17, Lcom/facebook/orca/protocol/methods/CreateThreadMethod;

    invoke-virtual/range {v16 .. v17}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/facebook/orca/protocol/methods/CreateThreadMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object/from16 v17, v0

    const-class v18, Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;

    invoke-virtual/range {v17 .. v18}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object/from16 v18, v0

    const-class v19, Lcom/facebook/orca/protocol/methods/UnregisterPushTokenMethod;

    invoke-virtual/range {v18 .. v19}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/facebook/orca/protocol/methods/UnregisterPushTokenMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object/from16 v19, v0

    const-class v20, Lcom/facebook/orca/protocol/methods/UploadShareMethod;

    invoke-virtual/range {v19 .. v20}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/facebook/orca/protocol/methods/UploadShareMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object/from16 v20, v0

    const-class v21, Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;

    invoke-virtual/range {v20 .. v21}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object/from16 v21, v0

    const-class v22, Lcom/facebook/orca/protocol/methods/MarkThreadMethod;

    invoke-virtual/range {v21 .. v22}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/facebook/orca/protocol/methods/MarkThreadMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object/from16 v22, v0

    const-class v23, Lcom/facebook/orca/protocol/methods/DeleteThreadMethod;

    invoke-virtual/range {v22 .. v23}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/facebook/orca/protocol/methods/DeleteThreadMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object/from16 v23, v0

    const-class v24, Lcom/facebook/orca/protocol/methods/SetThreadNameMethod;

    invoke-virtual/range {v23 .. v24}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/facebook/orca/protocol/methods/SetThreadNameMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object/from16 v24, v0

    const-class v25, Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;

    invoke-virtual/range {v24 .. v25}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object/from16 v25, v0

    const-class v26, Lcom/facebook/orca/protocol/methods/MarkFolderSeenMethod;

    invoke-virtual/range {v25 .. v26}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/facebook/orca/protocol/methods/MarkFolderSeenMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object/from16 v26, v0

    const-class v27, Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;

    invoke-virtual/range {v26 .. v27}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object/from16 v27, v0

    const-class v28, Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;

    invoke-virtual/range {v27 .. v28}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object/from16 v28, v0

    const-class v29, Lcom/facebook/orca/protocol/methods/SetThreadMuteUntilMethod;

    invoke-virtual/range {v28 .. v29}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/facebook/orca/protocol/methods/SetThreadMuteUntilMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object/from16 v29, v0

    const-class v30, Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

    invoke-virtual/range {v29 .. v30}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object/from16 v30, v0

    const-class v31, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    invoke-virtual/range {v30 .. v31}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object/from16 v31, v0

    const-class v32, Lcom/facebook/orca/protocol/methods/SetUserSettingsMethod;

    invoke-virtual/range {v31 .. v32}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/facebook/orca/protocol/methods/SetUserSettingsMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    move-object/from16 v32, v0

    const-class v33, Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;

    invoke-virtual/range {v32 .. v33}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;

    invoke-direct/range {v1 .. v32}, Lcom/facebook/orca/protocol/WebServiceHandler;-><init>(Lcom/google/inject/Provider;Lcom/google/inject/Provider;Lcom/google/inject/Provider;Lcom/facebook/orca/auth/AuthenticationManager;Lcom/facebook/orca/protocol/methods/AuthenticateMethod;Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;Lcom/facebook/orca/protocol/methods/FetchThreadMethod;Lcom/facebook/orca/protocol/methods/GetMeUserMethod;Lcom/facebook/orca/protocol/methods/SendMessageMethod;Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;Lcom/facebook/orca/protocol/methods/FetchMessageMethod;Lcom/facebook/orca/protocol/methods/AddMembersMethod;Lcom/facebook/orca/protocol/methods/CreateThreadMethod;Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;Lcom/facebook/orca/protocol/methods/UnregisterPushTokenMethod;Lcom/facebook/orca/protocol/methods/UploadShareMethod;Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;Lcom/facebook/orca/protocol/methods/MarkThreadMethod;Lcom/facebook/orca/protocol/methods/DeleteThreadMethod;Lcom/facebook/orca/protocol/methods/SetThreadNameMethod;Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;Lcom/facebook/orca/protocol/methods/MarkFolderSeenMethod;Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;Lcom/facebook/orca/protocol/methods/SetThreadMuteUntilMethod;Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;Lcom/facebook/orca/protocol/methods/SendViaChatHandler;Lcom/facebook/orca/protocol/methods/SetUserSettingsMethod;Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1633
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$WebServiceHandlerProvider;->a()Lcom/facebook/orca/protocol/WebServiceHandler;

    move-result-object v0

    return-object v0
.end method
