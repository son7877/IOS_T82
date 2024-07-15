import SwiftUI

struct MyTicketView: View {
    
    @StateObject private var viewModel = MyTicketViewModel()
    @State private var showModal = false
    @State private var selectedTicket: MyTicket?

    var body: some View {
        ForEach(viewModel.MyTicketContents, id: \.self){ ticket in
            ZStack{
                Image("myTicket")
                    .shadow(radius: 6, x: 0, y: 5)
                    .onTapGesture {
                        self.selectedTicket = ticket
                        self.showModal = true
                    }
                HStack{
                    Image("sampleImg")
                        .resizable()
                        .frame(width: 80, height: 100)
                        .padding(.bottom, 10)
                        .padding(.leading, 25)
                     
                    VStack {
                        Text(ticket.title)
                            .fontWeight(.bold)
                            .padding(.bottom, 2)
                        Text(ticket.eventStartTime.formmatedDay+" "+ticket.eventStartTime.formattedTime)
                            .padding(.bottom, 1)
                        Text(ticket.SectionName+"구역")
                        Text("\(ticket.rowNum)열 \(ticket.columnNum)번")
                            .padding(.bottom, 10)
                    }
                    Spacer()
                }
            }
            .padding()
        }
        .sheet(isPresented: $showModal){
            if let ticket = selectedTicket {
                MyTicketDetailView(ticket: ticket)
            }
        }
    }
}

#Preview {
    MyPageView(myPageSelectedTab: .myTicket)
}