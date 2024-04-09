struct Info_itf{
    char name[256];
};


struct Message_itf{
    int id;
    char name[256];
    char message[256];
    Message_itf *next;
};

program CHAT_PROG{
    version CHAT_VERS{
        int join(Info_itf) = 1;
        void print_clients() = 2;
        Message_itf update(int) = 3;
        void send_message(Message_itf) = 4;

    } = 1;
} = 0x20000001;

